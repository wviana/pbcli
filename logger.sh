#!/bin/bash


#Enable logger with getting pipe throught 
#redirect fd (stdout, stderr) to stdinn

# Ex:
#  foo 2>&1 | Logger "INFO"
#  file -> [INFO] DATE "foo"

# Append all Information to Log file.
function Logger () {
    if ["$1" == "usage" ]; then 
    	echo "  # Ex:
		#  foo 2>&1 | Logger \"INFO\" 
		#  file -> [INFO] DATE \"foo\""
    fi

    echo "[$1] $DATE -> $2" &>> $log;
}
