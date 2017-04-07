# .alex-config
My Linux configuration files


These are the files I use to configure new linux environments.

If you are interested in using them follow these instructions:

## Download this repository

Go on new machine and git clone this repository in your home directory.

You can do this with the following commands:  

```
cd ~
git clone https://github.com/all2187/.alex-config  
```

## Set up environment

Run the following commands to setup the new environment:  

```
cd ~  
rm -f .vimrc  
rm -f .gvimrc  
rm -f .bashrc  
ln -s .alex-config/.vimrc .vimrc  
ln -s .alex-config/.gvimrc .gvimrc  
ln -s .alex-config/.bashrc .bashrc  
mkdir -p .backup  
```

Note that this will overwrite any previous .vimrc, .gvimrc, or .bashrc

Also a .backup folder will be made if one didn't previously exist, then whether or not such a folder previously existed, it will be used to store from vim.

To avoid entering these commands by hand, the bash script setup.sh was provided. Running it will suffice to setup the environment.  

Run with command:  
```
cd ~/.alex-config  
./setup.sh
```

## Configure git

Don't forget to configure git!  

Commands:  

```
git config --global user.name "Your full name"  
git config --global user.email yourEmail@domain.end  
git config --global color.ui auto  
```
