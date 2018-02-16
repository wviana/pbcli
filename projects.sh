#!/bin/bash

source http.sh

function project-list() {
    http post '/projetos' '{"query":{"nao_buscar_info_detalhada":true},"opts":{"sort":{"key":"nome","order":1}},"cols":null,"id_usuario":196}' \
    | jq  '  .data | .[] | .nome '
}

function project() {
    case $1 in
        ls|"")
            project-list
            ;;
    esac
}

