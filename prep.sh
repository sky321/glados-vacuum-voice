#!/bin/bash

## 
#
# Prepare environment for glados vaccum voice creation
# sudo curl -s https://raw.githubusercontent.com/sky321/glados-vacuum-voice/master/prep.sh | /bin/bash
#
##

echo
echo
echo "----- update the OS -----"
echo
echo
apt-get update -y && apt-get upgrade -y


echo
echo
echo "----- install needed tools -----"
echo
echo
apt-get install -y git wget curl ccrypt python3-pip ffmpeg
pip install ffmpeg-normalize


echo
echo
echo "----- get repo from git -----"
echo
echo
rm -r glados-vacuum-voice
git clone https://github.com/sky321/glados-vacuum-voice.git

