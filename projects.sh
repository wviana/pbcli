#!/bin/bash

source http.sh

function project-list() {
    http post '/projetos' '{"query":{"nao_buscar_info_detalhada":true},"opts":{"sort":{"key":"nome","order":1}},"cols":null,"id_usuario":196}' \
    | jq  '  .data | .[] | .nome '

    # CODIGO ANTIGO DO CURL
    # curl 'https://projectbox.softbox.com.br/api/projetos' \
    # -XPOST \
    # -H 'Content-Type: application/json' \
    # -H 'Accept: application/json, text/plain, */*' \
    # -H "$(cat cookie)" \
    # --data-binary '{"query":{"nao_buscar_info_detalhada":true},"opts":{"sort":{"key":"nome","order":1}},"cols":null,"id_usuario":196}' 2> /dev/null | jq  '  .data | .[] | .nome '
}

function project() {
    case $1 in
        ls|"")
            project-list
            ;;
    esac
}

