#! /bin/bash

# get path of current script: https://stackoverflow.com/a/39340259/207661
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd "$SCRIPT_DIR"  >/dev/null

set -e
set -x

# Get Unreal install directory
UnrealDir=$1
if [[ !(-z "UnrealDir") ]]; then
    UnrealDir="$SCRIPT_DIR/UnrealEngine"
fi

# Install Unreal Engine
./install_unreal.sh $UnrealDir

#install airsim
./setup.sh
./build.sh

popd >/dev/null
