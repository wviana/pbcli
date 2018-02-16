#!/bin/bash

source http.sh

function sprint-list() {
    http post '/buscarSprints' '{"query":{"id_projeto":310,"buscar_info_roadmap":true},"opts":{},"cols":null,"id_usuario":196}' \
    | jq --raw-output ' .data | .[] | [.nro_sprint, .id_sprint, .status] | @tsv'
}

function sprint() {
    case $1 in
        ls|"")
            sprint-list
            ;;
    esac
}

