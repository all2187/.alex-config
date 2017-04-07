#!/bin/sh

cd ~ && rm -f .vimrc && rm -f .gvimrc && rm -f .bashrc && ln -s .alex-config/.vimrc .vimrc && ln -s .alex-config/.gvimrc .gvimrc && ln -s .alex-config/.bashrc .bashrc && mkdir -p .backup 


