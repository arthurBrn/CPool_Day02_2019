#!/bin/bash

export MY_LINE1
export MY_LINE2

cut -d: -f1 | sed '1d; n; d' | rev | sort -r | sed -n "$MY_LINE1,$MY_LINE2 p" | tr "\n" "," | sed 's/,/, /g' | sed 's/..$/\.\n\n/g'


