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
    ynh_systemd_action --service_name=$app-go-sbot.service --action="stop" --log_path="/var/log/$app/$app.log"
    ynh_systemd_action --service_name=$app-peach-web.service --action="stop" --log_path="/var/log/$app/$app.log"

}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

