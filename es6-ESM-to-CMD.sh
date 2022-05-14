#!/bin/bash
sed=`which -s gsed && echo "gsed" || echo "sed"`

$sed -i -E "s/import\s([a-zA-Z0-9_]+)\sfrom\s(\S+)/const \1 = require(\2)/g" $1