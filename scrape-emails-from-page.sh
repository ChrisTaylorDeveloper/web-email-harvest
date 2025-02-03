#!/bin/bash

while read -r u; do
    echo ---
    echo "$u"
    curl --silent "$u" | grep -Po --file=email-regex.txt | sort | uniq
done <urls.txt
