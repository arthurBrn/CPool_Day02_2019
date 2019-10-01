#!/bin/bash

export MY_LINE1=24
export MY_LINE2=42

cut -d: -f1 | sed '0~2d' | rev | sort -r | sed -n "$MY_LINE1,$MY_LINE2 p" | tr "\n" "," | sed 's/,/, /g' | sed 's/..$/\.\n\n/g'


