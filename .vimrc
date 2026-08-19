call plug#begin()
Plug 'vim-autoformat/vim-autoformat'
Plug 'fxn/vim-monochrome'
Plug 'aditya-azad/candle-grey'
Plug 'davidosomething/vim-colors-meh'
Plug 'widatama/vim-phoenix'
Plug 'zenbones-theme/zenbones.nvim'
Plug 'arcticicestudio/nord-vim'

call plug#end()

" Set up the override BEFORE calling the colorscheme
augroup CustomCommentColor
    autocmd!
    " Change the hex code (#808080) and ctermfg (244) to your desired color
    autocmd ColorScheme * highlight Comment guifg=#909090 ctermfg=101  gui=italic cterm=italic
    autocmd ColorScheme * highlight String guifg=#00ff00 ctermfg=107 gui=NONE cterm=NONE
augroup END

colorscheme monochrome
colorscheme zenbones
colorscheme nord

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



