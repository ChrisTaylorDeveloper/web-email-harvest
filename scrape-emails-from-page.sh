#!/bin/bash

curl --silent https://www.guernseyregistry.com/article/154185/Fintech | grep -Po --file=email-regex.txt | sort | uniq
