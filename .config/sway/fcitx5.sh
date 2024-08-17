#! /usr/bin/bash
engine=$(fcitx5-remote)
if [ "${engine}" == "1" ] || [ "${engine}" == "0" ]
then
    fcitx5-remote -o
else
    fcitx5-remote -c
fi
