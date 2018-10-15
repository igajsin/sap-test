#!/bin/bash

set -e

function _ps { # show a process information in the specific format
    ps -eo pid,user,comm
}

# filter all with pid < 1000
# and put the command field before the pid and the user
function _filter {
    awk '{if ($1 < 1000) {print $3 " " $1 " " $2 }}'
}

_ps | _filter
