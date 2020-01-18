#!/usr/bin/env bash 

tput reset

COLUMNS=$(tput cols) 
title="Telegram Persian Font" 
printf "%*s\n" $(((${#title}+$COLUMNS)/2)) "$title"

echo "Copying font config file and fonts directory to $HOME ..."
 
if cp -r .fonts .fonts.conf ~;then 
    echo "Done."
else
  echo "Unable to copy font contents in $HOME."
  exit -1
fi

