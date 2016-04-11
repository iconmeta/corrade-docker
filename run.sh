#!/bin/sh

# Attempt to get around this lock screwing stuff up on restart
rm -f Corrade.exe.lock
mono-service -l:Corrade.exe.lock --no-daemon ./Corrade.exe
sleep 5 # try to avoid a huge spin cycle if something isn't starting up right
