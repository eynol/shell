#!/bin/bash
sed=$(which -s gsed && echo "gsed" || echo "sed")

$sed -i -E "s/(const|let|var)\s+([a-zA-Z0-9_]+)\s+=\s+require\((\S+)\);?/import \2 from \3/g" $1
