vim.opt.number = true
vim.opt.relativenumber = true

-- Set tabstop, shiftwidth, and use spaces instead of tabs
vim.api.nvim_set_option('tabstop', 4) -- number of spaces that a <tab> uses
vim.api.nvim_set_option('shiftwidth', 4) -- number of spaces to use for (auto) indent
vim.api.nvim_set_option('expandtab', true) -- use spaces instead of tabs



-- colorscheme
vim.cmd("colorscheme tokyonight")

-- tab width to 2 spaces for js files 
vim.api.nvim_exec([[
  augroup JavaScriptTabSize
    autocmd!
    autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
  augroup END
]], false)



