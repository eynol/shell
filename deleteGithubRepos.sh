#/bin/bash
while read r; do
    echo "=>" $r
    curl \
        -X DELETE \
        -H 'Authorization: token xxx' \
        -H "Accept: application/vnd.github.v3+json" \
        https://api.github.com/repos/$r
done