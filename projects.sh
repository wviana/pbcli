#!/bin/bash

function project-list() {
    curl 'https://projectbox.softbox.com.br/api/projetos' \
    -XPOST \
    -H 'Content-Type: application/json' \
    -H 'Accept: app lication/json, text/plain, */*' \
    -H "$(cat cookie)" \
    --data-binary '{"query":{"nao_buscar_info_detalhada":true},"opts":{"sort":{"key":"nome","order":1}},"cols":null,"id_usuario":196}' 2> /dev/null | \
    jq  --raw-output ' .data | .[] | [.id_unidade, .nome, .pontos_totais, .pontos_previstos, .sprints_previstos, .pontos_concluidos, .dt_inicio, .num_tarefas_criadas, .status ] | @tsv'
}

function project() {
    case $1 in
        ls|"")
            project-list
            ;;
    esac
}

