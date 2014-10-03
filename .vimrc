set autoindent

set number
set bg=dark
set softtabstop=4

" autocmd BufNewFile,BufRead *.pl compiler perl
set ruler
set wrap
syntax enable
set nobackup
set nowritebackup
set noswapfile
set visualbell
set title
hi LineNr guibg=NONE
set shiftwidth=4
set ignorecase
set smartcase
set expandtab
set hlsearch
set ruler
set nostartofline
set incsearch

autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite

