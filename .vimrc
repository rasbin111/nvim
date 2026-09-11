call plug#begin()
Plug 'vim-autoformat/vim-autoformat'
Plug 'fxn/vim-monochrome'
Plug 'aditya-azad/candle-grey'
Plug 'davidosomething/vim-colors-meh'
Plug 'widatama/vim-phoenix'
Plug 'zenbones-theme/zenbones.nvim'
Plug 'arcticicestudio/nord-vim'
" Plug 'ziglang/zig.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

" Set up the override BEFORE calling the colorscheme
augroup CustomCommentColor
    autocmd!
    " Change the hex code (#808080) and ctermfg (244) to your desired color
    autocmd ColorScheme * highlight Comment guifg=#aaaaaa ctermfg=107  gui=italic cterm=italic
    autocmd ColorScheme * highlight String guifg=#aaffaa ctermfg=109 gui=NONE cterm=NONE
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

" coc support
let g:coc_global_extensions = ['coc-clangd']

" coc setup
" Show coc.nvim status, including extension installation progress
set statusline^=%{coc#status()}

function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Trigger completion with Tab and navigate the completion menu
inoremap <silent><expr> <TAB>
            \ coc#pum#visible() ? coc#pum#next(1) :
            \ CheckBackspace() ? "\<Tab>" :
            \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Diagnostics and code navigation
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

" comment
packadd comment


" cursor
let &t_SI = "\e[6 q" " Insert mode: steady vertical bar
let &t_SR = "\e[4 q" " Replace mode: steady underline
let &t_EI = "\e[2 q" " Normal mode (Everything Else): steady block

" termguicolors so visual mode don't hide selected text
set termguicolors

" lets us use background settings of our terminal
highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE
highlight SignColumn guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE
