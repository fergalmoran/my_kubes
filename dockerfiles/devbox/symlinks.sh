#!/bin/bash

dir=/home/fergalm/dotfiles                    # dotfiles directory
olddir=/home/fergalm/dotfiles_old             # old dotfiles backup directory
files="pylint.rc tmux.conf zshrc bash_aliases bash_functions sqliterc Xresources"    # list of files/folders to symlink in homedir

echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
cd $dir
echo "...done"
for file in $files; do
    echo 'Moving any existing dotfiles from ~ to $olddir'
    mv /home/fergalm/.$file /home/fergalm/dotfiles_old/
    echo 'Creating symlink to $file in home directory.'
    ln -s $dir/$file /home/fergalm/.$file
done
