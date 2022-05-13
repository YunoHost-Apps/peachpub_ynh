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

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

ynh_detect_arch(){
        local architecture
        if [ -n "$(uname -m | grep arm64)" ] || [ -n "$(uname -m | grep aarch64)" ]; then
                architecture="arm64"
        elif [ -n "$(uname -m | grep 64)" ]; then
                architecture="amd64"
        elif [ -n "$(uname -m | grep 86)" ]; then
                architecture="386"
        elif [ -n "$(uname -m | grep armv7)" ]; then
                architecture="arm7"
        elif [ -n "$(uname -m | grep armv6)" ]; then
                architecture="arm6"
        else
                architecture="unknown"
        fi
        echo $architecture
}