#!/bin/bash

pac=$(checkupdates | wc -l)
aur=$(cower -u | wc -l)

check=$((pac + aur))
#if [[ "$check" != "0" ]]
#then
    echo "$pac %{F#16d0d0}%{F-} $aur"
#fi
