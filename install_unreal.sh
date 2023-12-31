#! /bin/bash
cd $1
./Setup.sh
./GenerateProjectFiles.sh
make
