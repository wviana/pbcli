#!/bin/bash

function project-list() {
    echo "Staring retrive list " | Logger "INFO" 
    curl 'https://projectbox.softbox.com.br/api/projetos' \
    -XPOST \
    -H 'Content-Type: application/json' \
    -H 'Accept: application/json, text/plain, */*' \
    -H "$(cat cookie)" \
    --data-binary '{"query":{"nao_buscar_info_detalhada":true},"opts":{"sort":{"key":"nome","order":1}},"cols":null,"id_usuario":196}' 2> /dev/null | jq  '  .data | .[] | .nome '
}

function project() {
    case $1 in
        ls|"")
            project-list
            ;;
    esac
}

