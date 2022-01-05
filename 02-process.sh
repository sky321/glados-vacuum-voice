#!/bin/bash -e
#
# Normalize the volume of the spoken text.
# Requires ffmpeg-normalize (pip install ffmpeg-normalize) and ffmpeg (http://ffmpeg.org/download.html).
# For Dreame devices convert wav to ogg files

inputdir=output/speech
outputdir=output/result

ffmpeg-normalize $inputdir/*.wav --normalization-type peak --target-level 0 -of $outputdir -ext wav

ffmpeg -i $outputdir/*.wav -acodec libvorbis  $outputdir/*.ogg