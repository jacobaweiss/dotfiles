call plug#begin(expand('~/.config/nvim/plugged'))
Plug 'kien/rainbow_parentheses.vim'

" Set rainbow parens to always-on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

call plug#end()
