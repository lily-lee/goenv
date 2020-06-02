#!/usr/bin/env bash

shell_type="${SHELL##*/}"

if ! [[ -d "bin" ]]; then
  mkdir "bin"
fi

sed "1s/bash/$shell_type/" "src/goenv" > "bin/goenv"

chmod a+x "bin/goenv"

profile_name="$HOME"/.zprofile
if ! [[ -f "$profile_name" ]]; then
    profile_name="$HOME"/.zshrc
fi

if ! [[ "$SHELL" == "/bin/zsh" ]]; then
    echo "$SHELL"
    profile_name="$HOME"/.bash_profile
    if ! [[ -f "$profile_name" ]]; then
        profile_name="$HOME"/.bashrc
    fi
fi

cp "bin/goenv" "/usr/local/bin/"
