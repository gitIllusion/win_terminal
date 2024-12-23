#!/bin/bash

# directs
(ls --color=always -p | grep '/$' | sed -e 's|/$||' | while read -r dir; do
    printf "\033[32m|-- %s\033[0m\n" "$dir"
done;

# files
ls --color=always -p | grep -v '/$')