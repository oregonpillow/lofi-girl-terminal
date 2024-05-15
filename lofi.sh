#!/bin/bash


IMAGE_URL=https://i.pinimg.com/originals/4a/65/ab/4a65abeead3a8d113bccfee5d5d239f4.gif
MUSIC_URL=https://www.youtube.com/watch\?v\=jfKfPfyJRdk

# pre-requisities
which mpv > /dev/null || { echo "ERROR: mpv not installed" && exit 1; }
which imgcat > /dev/null || { echo "ERROR: imgcat not installed" && exit 1; }
if ! [ "$TERM_PROGRAM" = "iTerm.app" ]; then { echo "ERROR: terminal must be iTerm2" && exit 1; }; fi

imgcat --url $IMAGE_URL && mpv --no-video --really-quiet $MUSIC_URL
