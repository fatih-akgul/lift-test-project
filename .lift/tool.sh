#!/bin/bash

function run() {
    echo '[ { "type" : "bad json", "file" : "test.txt", "line": 1, "message" : "Not JSON", "details_url": null } ]'
}

[[ "$3" = "version" ]] && echo "1"
[[ "$3" = "applicable" ]] && echo "true"
[[ "$3" = "run" ]] && run
[[ -z "$3" ]] && echo '{ "version" : 1, "name" : "json-verifier" }'
