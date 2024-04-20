#!/bin/bash

handleRequest() {
    while true; do
        read line
        mod=$(fortune)
        cat <<EOF > $RSPFILE
HTTP/1.1 200


<pre>$(cowsay $mod)</pre>
EOF
    done
}

handleRequest
