call plug#begin()
Plug 'vim-autoformat/vim-autoformat'
Plug 'fxn/vim-monochrome'
Plug 'aditya-azad/candle-grey'
Plug 'davidosomething/vim-colors-meh'
call plug#end()

colorscheme monochrome

" Press F3 to manually format the current file
noremap <F3> :Autoformat<CR>

" Automatically format code every time you save the file
autocmd BufWritePre * :Autoformat

" Set the visual width of a tab character to 4 spaces
set tabstop=4

" Set the width used when you press the Tab key or use auto-indentation
set softtabstop=4

" Set the distance between indent levels (used by commands like >> and <<)
set shiftwidth=4

" Convert all new Tab characters into actual spaces
set expandtab

set number
set relativenumber
set colorcolumn=80



