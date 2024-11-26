#!/usr/bin/env bash

sudo mkdir /mnt/ccache
sudo mount --bind /home/$USER/.cache/ccache /mnt/ccache
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=/mnt/ccache
ccache -M 50G
ccache -o compression=true
