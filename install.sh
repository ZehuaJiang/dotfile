!#/bin/bash 

mv vimrc $HOME/.vimrc
mkdir $HOME/.vim/colors -p

# install vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# open vim and install plugin
# install tools to make youcompleteme 
apt-get install -y build-essential cmake python-dev

# install youcompleteme 
