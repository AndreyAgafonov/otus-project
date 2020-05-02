#!/bin/bash
time=$(date +%s)
vagrant status | awk 'BEGIN{ tog=0; } /^$/{ tog=!tog; } /./ { if(tog){print $1} }' | xargs -P6 -I {} vagrant up {} --no-provision
#vagrant provision
echo "---"
echo $(($(date +%s)-$time))