#!/bin/bash -e
#
# Normalize the volume of the spoken text.
# Requires ffmpeg-normalize (pip install ffmpeg-normalize) and ffmpeg (http://ffmpeg.org/download.html).
# For Dreame devices convert wav to ogg files

inputdir=output/speech
outputdir=output/result

[ -d "$outputdir" ] && rm -r $outputdir

ffmpeg-normalize $inputdir/*.wav --normalization-type peak --target-level 0 -of $outputdir -ext wav

for i in $outputdir/*.wav; do ffmpeg -i "$i" -acodec libvorbis -ab 64k -ar 22050 "${i%.*}.ogg"; done
