#!/bin/sh

# this script moves the contents of the Epsanso library into the more unix-like location of a local `.config` directory.

# This also requires espanso to stop and then restart.
library_dir="$HOME/Application\ Support/espanso"
config_dir="$HOME/.config/espanso"

espanso stop &&
check_espanso_library() {
    # ensures that the library is actually present. Restarts Espanso if it fails.
    if ! $(ls $library_dir); then
        osascript -e 'tell app "System Events" to display dialog "The Espanso library was not found in the expected location."'
        espanso start
        exit(1)
    fi
}

check_espanso_library &&
mkdir -p $config_dir && 
cp -r $library_dir/* $config_dir && 
rm -r $library_dir &&
ln -s $config_dir $library_dir &&

espanso start