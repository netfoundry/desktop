#!/usr/bin/env bash

echo "OSTYPE is: $OSTYPE"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo "OSTYPE is supported";

    npm run package:linux

elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "OSTYPE is supported";

    npm run package:mac

elif [[ "$OSTYPE" == "cygwin" ]]; then
    # POSIX compatibility layer and Linux environment emulation for Windows
    echo "OSTYPE is unsupported";
elif [[ "$OSTYPE" == "msys" ]]; then
    # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
    echo "OSTYPE is unsupported";
elif [[ "$OSTYPE" == "win32" ]]; then
    # I'm not sure this can happen.
    echo "OSTYPE is unsupported";
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    echo "OSTYPE is supported";

    npm run package:linux

else
    echo "OSTYPE is unsupported";
fi
