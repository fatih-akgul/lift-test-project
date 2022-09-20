#!/bin/bash

function run() {
    echo '[ { "type" : "bad json", "file" : "test.txt", "line": 1, "message" : "Not JSON", "details_url": null } ]'
}

if [[ "$3" = "version" ]] ; then
    echo "1"
fi

if [[ "$3" = "applicable" ]] ; then
    echo "true"
fi

if [[ "$3" = "run" ]] ; then
    run
fi

if [[ -z "$3" ]] ; then
    echo '{ "version" : 1, "name" : "json-verifier" }'
fi
