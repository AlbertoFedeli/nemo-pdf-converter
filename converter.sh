#!/bin/bash
lowriter --headless --convert-to pdf "$1" --outdir "$2"
if [ $? -eq 0 ]; then
  rm "$1"
else
  echo "conversion failed"
fi
