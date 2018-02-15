#!/bin/bash

base_url='https://projectbox.softbox.com.br/api'
cookie="$(cat cookie)"
default_headers="-H Content-Type:application/json -H Accept:application/json,text/plain,*/*"

function post() {
    curl "$base_url$end_point" \
    -XPOST \
    $default_headers \
    -H "$cookie"  \
    --data-binary "$1" 2> /dev/null 
}

function get() {
    curl "$base_url$end_point" \
    $default_headers \
    -H "$cookie"  \
}

function http() {
    if [ $# -lt 2 ]; then
        usage
    fi

    end_point=$2

    case $1 in 
        post)
            post "$3"
            ;;
        get)
            get "$3"
    esac

}

