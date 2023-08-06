#!/bin/bash

# Rename the openredirex.py file to openredirex
mv openredirex.py openredirex


# Move the openredirex file to /usr/local/bin
sudo mv openredirex /usr/local/bin/

# Make the openredirex file executable
sudo chmod +x /usr/local/bin/openredirex

# Remove the openredirex.pyc file if it exists
if [ -f openredirex.pyc ]; then
    rm openredirex.pyc
fi

echo "openredirex has been installed successfully!"