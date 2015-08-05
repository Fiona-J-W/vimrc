#! /bin/sh

git clone "https://github.com/gmarik/Vundle.vim.git" "$HOME/.vim/bundle/vundle"

ln "vimrc" "$HOME/.vimrc"
ln "gvimrc" "$HOME/.gvimrc"

mkdir -p "$HOME/.config/ycm"
ln "./ycm_extra_conf.py" "$HOME/.config/ycm/.ycm_extra_conf.py"

echo "Please execute „:BundleInstall“ now.

After that go to ~/.vim/bundle/YouCompleteMe and execute
./install.sh --clang-completer

In order to use the unrecommended system-versions of clang and boost,
add „--system-libclang --system-boost“
" | vim -

