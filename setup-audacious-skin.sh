#!/bin/bash
UUID=$(id -u)
UUID=$(( UUID + 0 ))
I_OK="✔"
I_KO="✖️"
URLgithub="https://raw.githubusercontent.com/afimpel/audacious-skin/main"

if [ $UUID != 1000 ]; then
    echo "${I_KO}    Start the Script as '$(getent passwd 1000 | cut -d: -f1)' for it to work properly    ${I_KO}";
    exit 1;
else
    echo "${I_OK}    **** install packages ****" 
    mkdir -p ~/.local/share/audacious/Skins/
    cd ~/.local/share/audacious/Skins/
    wget --no-cache -O ~/.local/share/audacious/Skins/afimpelelnerd_bento.wsz ${URLgithub}/afimpelelnerd_bento.wsz
    wget --no-cache -O ~/.local/share/audacious/Skins/bento.wsz ${URLgithub}/bento.wsz
    wget --no-cache -O ~/.local/share/audacious/Skins/classic.wsz ${URLgithub}/classic.wsz
    wget --no-cache -O ~/.local/share/audacious/Skins/royal.wsz ${URLgithub}/royal.wsz
    echo "${I_OK}    END: $(date)"
fi