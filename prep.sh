#!/bin/bash

## 
#
# Prepare environment for glados vaccum voice creation
# curl -s https://raw.githubusercontent.com/sky321/glados-vacuum-voice/master/prep.sh | /bin/bash
#
##

echo
echo
echo "----- update the OS -----"
echo
echo
sudo apt-get update -y && sudo apt-get upgrade -y


echo
echo
echo "----- install needed tools -----"
echo
echo
sudo apt-get install -y git wget curl ccrypt python3 ffmpeg
sudo pip install ffmpeg-normalize


echo
echo
echo "----- get repo from git -----"
echo
echo
git clone https://github.com/sky321/glados-vacuum-voice.git
cd glados-vacuum-voice

