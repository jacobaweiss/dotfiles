set number

" Set up vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  echo "Installing vim-plug"
  echo ""
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

source ~/.config/nvim/plugins.vim

" Set rainbow parens to always-on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Show NERDTree if no file is specified, close if no other files are open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Fix vim-tmux-navigator
" (https://github.com/christoomey/vim-tmux-navigator#it-doesnt-work-in-neovim-specifically-c-h)
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>

let mapleader=","
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader>m :CtrlPMRU<cr>
map <Leader>w :w<CR>
map <C-n> :NERDTreeToggle<CR>

" vim-test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>l :TestLast<CR>
let test#strategy = 'vimux'

" copying to clipboard
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

autocmd BufWritePre * :%s/\s\+$//e

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

set tabstop=2
set shiftwidth=2
set expandtab

set tags+=.tags
