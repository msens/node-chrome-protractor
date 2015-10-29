# node-chrome-protractor

[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/mjvdende/node-chrome-protractor?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

[![](https://badge.imagelayers.io/mjvdende/node-chrome-protractor:latest.svg)](https://imagelayers.io/?images=mjvdende/node-chrome-protractor:latest 'Get your own badge on imagelayers.io')

##Usage
A standard smoke test has been included (test/smoke-test.js)
Modify the url and what is expected.

Build docker container:
docker build -t="my/tag:latest" .

Run docker container:
docker run -it -v $PWD/tests:/tests -w="/tests" my/tag:latest



OLD:

Create a run tests script to start a display server and then start protractor:

    #!/usr/bin/env bash
    xvfb-run --server-args="$DISPLAY -screen 0 1360x1020x24 -ac +extension RANDR" \
    protractor protractor.conf.js

After creating the script, for example run-tests.sh, start the container:
    
    docker run -it -v /protractor/tests:/tests \
    -w="/tests" \
    mjvdende/node-chrome-protractor \
    ./run-tests.sh



