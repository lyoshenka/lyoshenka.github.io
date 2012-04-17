#!/bin/bash

if [ -z "$*" ]; then
  echo "Need a post title";
  exit 1;
fi

FILENAME=_posts/`date +%Y-%m-%d`-`echo "$*" | tr ' ' -`.md
echo -e "---\nlayout: post\n---\n\n" >> $FILENAME
vi $FILENAME
