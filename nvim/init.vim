" Set up vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  echo "Installing vim-plug"
  echo ""
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

source ~/.config/nvim/plugins.vim
