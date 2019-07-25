#!/usr/bin/env bash

a="${SHELL##*/}"

sed "1s/bash/$a/" "src/goenv" > "bin/goenv"

chmod a+x "bin/goenv"

profilename="$HOME"/.zprofile
if ! [[ -f "$profilename" ]]; then
    profilename="$HOME"/.zshrc
fi

if ! [[ "$SHELL" == "/bin/zsh" ]]; then
    echo $SHELL
    profilename="$HOME"/.bash_profile
    if ! [[ -f "$profilename" ]]; then
        profilename="$HOME"/.bashrc
    fi
fi

cp "bin/goenv" "/usr/local/bin/"
