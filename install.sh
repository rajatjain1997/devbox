#!/bin/bash

mkdir -p /spare/bin
git clone git@github.com:rajatjain1997/devbox.git
wait
mv devbox /spare/profile
cd /spare/profile
chmod +x devbox
ln -s /spare/profile/devbox /spare/bin/devbox

echo "source /spare/profile/profile" >> "~/.bashrc"