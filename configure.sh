#!/bin/bash

# Script to source and export default configuration.

#Get system date to log.
DATE=`date '+%Y-%m-%d %H:%M:%S'`

# Config files location
configfile='pbcli.cfg'
configfile_secured='/tmp/pbcli.cfg'

function load_config() {
    #Check if we got the first config file.
    if [ ! -f "$configfile" ]; then
        echo "Nao foi encontrado nenhum arquivo de configuração. Abortando..."
        exit 1;
    fi;

    # check if the file contains something we don't want
    if egrep -q -v '^#|^[^ ]*=[^;]*' "$configfile"; then
	    echo "Config file is unclean, cleaning it..." >&2
	    # filter the original to a new file
	    egrep '^#|^[^ ]*=[^;&]*'  "$configfile" > "$configfile_secured"
	    configfile="$configfile_secured"
    fi;
    # now source it, either the original or the filtered variant
    source "$configfile";

}
