#!/usr/bin/env bash
#for some reason, dos2unix is to be run on this file and this cannot be done within dockerfile build.
dos2unix /opt/google/chrome/google-chrome
xvfb-run --server-args="$DISPLAY -screen 0 1360x1020x24 -ac +extension RANDR" protractor conf.js