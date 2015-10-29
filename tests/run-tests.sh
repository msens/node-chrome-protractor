#!/usr/bin/env bash
xvfb-run --server-args="$DISPLAY -screen 0 1360x1020x24 -ac +extension RANDR" protractor conf.js