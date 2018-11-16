#!/bin/bash

mkdir -p /spare/bin
cd /spare
git clone git@github.com:rajatjain1997/devbox.git .devbox
wait
chmod +x .devbox/devbox
ln -s /spare/.devbox/devbox /spare/bin/devbox

echo "source /spare/.devbox/.bashprofile" >> "~/.bashrc"