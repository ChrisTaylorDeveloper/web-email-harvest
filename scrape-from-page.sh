#!/bin/bash

while read -r u; do
    echo ---
    echo "$u"
    curl --silent "$u" | grep -Pio --file=email-regex.txt | sort | uniq
done <urls.txt
