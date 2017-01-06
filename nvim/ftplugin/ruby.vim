" rubocop
nmap <silent> <Leader>R :call VimuxRunCommand("clear; rubocop " . bufname("%"))<CR>
