#!/bin/bash -e
#
# Package wav files in a directory to embed in a dustcloud image or upload to Valetudo for xiaomi gen1 and gen2.
# Requires ccrypt, md5sum

dir=output/result
sound_password="r0ckrobo#23456"

cd $dir

# for roborock pack like this
tar zc *.wav | ccrypt -e -K "$sound_password" > robo-voicepack.pkg

# for dreame pack like this
tar -czvf dreame-voicepack.tar.gz *.ogg
md5sum dreame-voicepack.tar.gz > dreame-voicepack.md5