# Vim-Plug
vimplug=~/.vim/autoload/plug.vim
if [ ! -f $vimplug ]; then
    curl -fLo $vimplug --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
vim +PlugClean +'PlugInstall --sync' +qa
