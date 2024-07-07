set tabstop=4
set shiftwidth=4
set expandtab

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mboughaba/i3config.vim'
Plug 'sbdchd/neoformat'

call plug#end()

aug i3config_ft_detection
    au!
    au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 

xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
