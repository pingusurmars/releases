#!/bin/bash
if [ ! -d "releases" ]; then
    git clone https://github.com/FPSensor/releases.git
    cd releases
else
    cd releases
    git pull
fi
curl https://storage.googleapis.com/git-repo-downloads/repo > bin/repo
chmod a+x bin/*
source config.sh
export GITHUB_TOKEN=""
export TELEGRAM_TOKEN="5762323519:AAGFpmROwwhpJtMYkj6mYJnrgW9994rdZME"
export TELEGRAM_CHAT="-1001889350212"
export BUILD_NUMBER=""
source init.sh
