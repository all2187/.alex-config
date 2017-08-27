#!/bin/sh
RES=false
promptUser () {
    while true; do
        read -p "Do you wish to install $1 (Yy/Nn)?" yn
        case $yn in
            [Yy]* ) RES=true; break;;
            [Nn]* ) RES=false; break;;
            * ) echo "Please answer y, Y, n, or N.";;
        esac
    done
}

# setup git
while true; do
    read -p "Do you wish to setup git? (Yy/Nn)?" yn
    case $yn in
        [Yy]* ) RES=true; break;;
        [Nn]* ) RES=false; break;;
        * ) echo "Please answer y, Y, n, or N.";;
    esac
done
if [ "$RES" = true ]; then
    read -p "Your email: " email
    read -p "Your name: " name
    git config --global user.email "$email"
    git config --global user.name "$name"
    git config --global color.ui auto
fi

# install gvim
promptUser "gvim"
if [ "$RES" = true ]; then
    sudo apt-get install vim-gtk
fi


# install atom
promptUser "atom"
if [ "$RES" = true ]; then
    sudo add-apt-repository ppa:webupd8team/atom
    sudo apt-get update
    sudo apt-get install atom
fi


#install pyenv
promptUser "pyenv"
if [ "$RES" = true ]; then
    curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
    echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> "$HOME/.bashrc_custom"
    echo 'eval "$(pyenv init -)"' >> "$HOME/.bashrc_custom"
    echo 'eval "$(pyenv virtualenv-init -)"' >> "$HOME/.bashrc_custom"
fi


