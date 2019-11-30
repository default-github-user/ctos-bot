#!/bin/bash

set -eu

VIRTUALENV=.data/env

if [! -d $VIRTUALENV ]; then
    python3 -m venv $VIRTUALENV
fi

if [! -f $VIRTUALENV/bin/pip ]; then
    curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | $VIRTUALENV/bin/python
fi



# Install Modules and Requirements
$VIRTUALENV/bin/pip install -r requirements.txt

# Run the flask frontend (for uptime)
$VIRTUALENV/bin/python3 alive.py

# Run the bot
$VIRTUALENV/bin/python3 start.py
