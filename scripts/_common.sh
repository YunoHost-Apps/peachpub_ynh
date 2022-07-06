#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies=""

description="Secure Scuttlebutt Pub Admin Interface"

#=================================================
# PERSONAL HELPERS
#=================================================

start_systemd_services () {
    # the first argument of this function $1, is $app
    ynh_systemd_action --service_name="$1-go-sbot.service" --action="start" --log_path="/var/log/$1/$1.log"
    ynh_systemd_action --service_name="$1-peach-web.service" --action="start" --log_path="/var/log/$1/$1.log"

    # restart peach-web (this is hack, but it avoids an unexplained 502 error)
    ynh_systemd_action --service_name="$1-peach-web.service" --action="restart" --log_path="/var/log/$1/$1.log"
    # restart go-sbot (this is hack, but it helps go-sbot populate everything on first boot)
    ynh_systemd_action --service_name="$1-go-sbot.service" --action="restart" --log_path="/var/log/$1/$1.log"
}

stop_systemd_services () {
    # the first argument of this function $1, is $app
    ynh_systemd_action --service_name=$1-go-sbot.service --action="stop" --log_path="/var/log/$1/$1.log"
    ynh_systemd_action --service_name=$1-peach-web.service --action="stop" --log_path="/var/log/$1/$1.log"

}

publish_address () {
    # the first argument of this function $1, is $domain
    # the second argument of this function $2, is $ssbport
    # the third argument of this function $3, is the path to peach-config binary
    # the following environmental variables must also be set: GO_SBOT_DATADIR, PEACH_CONFIG_PATH
    host=$1
    port=$2
    peach_config=$3
    sbot_is_running=0
    num_attempts=0
    while [ sbot_is_running -eq 0 && num_attempts -le 8 ]
    do
      whoami=$($peach_config whoami)
      echo "whoami $whoami"
      sbot_is_running=$?
      if [ sbot_is_runnnig -eq 0 ]
      then
          sleep 1
          num_attempts += 1
          echo "trying again $num_attempts"
      fi
    done
    if [ sbot_is_runnnig -eq 1 ]
    then
        # now sbot is running, and we publish the address
        $peach_config publish-address -a $host:$port
        echo "successfully published $host:$port"
    else
        # otherwise sbot failed to start, so lets exit with an error message
        echo "Failed to publish address because sbot failed to start"
        exit 1
    fi
 }

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

