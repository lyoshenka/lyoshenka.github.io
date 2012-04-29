#!/bin/bash

FILENAME="$1";
#TITLE=`cat $1 | sed -ne 's/^# \(.*\)/\1/p'`;
#echo "$FILENAME => $TITLE";
#sed -i'' "3 i\title: $TITLE" $FILENAME

cat $FILENAME | grep -v '^# ' > $FILENAME
