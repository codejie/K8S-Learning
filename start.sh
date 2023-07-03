#!/bin/sh
if [ "$ENV" == "product" ]
then
    npm install
    tsc -p tsconfig.json
    node ./dist/index.js
else
    echo "just do it..."
    tail -f /dev/null
fi