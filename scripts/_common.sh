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
    ynh_systemd_action --service_name="$1-peach-web.service" --action="start" --log_path="/var/log/$1/$1-peach-web.log" --line_match="Launching web server"
    ynh_systemd_action --service_name="$1-go-sbot.service" --action="start" --log_path="/var/log/$1/$1-go-sbot.log" --line_match="adverstiser using local address"
}

stop_systemd_services () {
    # the first argument of this function $1, is $app
    ynh_systemd_action --service_name=$app-go-sbot.service --action="stop" --log_path="/var/log/$app/$app-go-sbot.log"
    ynh_systemd_action --service_name=$app-peach-web.service --action="stop" --log_path="/var/log/$app/$app-peach-web.log"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

