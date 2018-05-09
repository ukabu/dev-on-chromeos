#!/bin/bash

DIR="$( cd "$( dirname $(readlink -f "${BASH_SOURCE[0]}") )" && pwd )"

export DEBIAN_FRONTEND=noninteractive

for SETUP_SCRIPT in ls $DIR/root/??-*; do
  sudo $SETUP_SCRIPT
done

[ -d ~/bin ] || mkdir ~/bin

for SETUP_SCRIPT in ls $DIR/user/??-*; do
  $SETUP_SCRIPT
done

# useful aliases
grep "^alias gw=" ~/.bashrc || echo "alias gw=./gradlew" >> ~/.bashrc
grep "^alias mw=" ~/.bashrc || echo "alias mw=./mvnw" >> ~/.bashrc

mkdir -p $HOME/projects

echo "Logout and log back in to synchronize all the bits and bytes."
