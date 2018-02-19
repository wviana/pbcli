#!/bin/bash

source http.sh

function project-list() {
    echo " Staring query for List project | Logger "INFO"
    http post '/projetos' '{"query":{"nao_buscar_info_detalhada":true},"opts":{"sort":{"key":"nome","order":1}},"cols":null,"id_usuario":196}' \
    | jq  --raw-output ' .data | .[] | [.id_unidade, .nome, .pontos_totais, .pontos_previstos, .sprints_previstos, .pontos_concluidos, .dt_inicio, .num_tarefas_criadas, .status ] | @tsv'

}

function project() {
    case $1 in
        ls|"")
            project-list
            ;;
    esac
}

