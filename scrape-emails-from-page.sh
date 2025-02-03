#!/bin/bash

curl --silent "$1" | grep -Po --file=email-regex.txt | sort | uniq
