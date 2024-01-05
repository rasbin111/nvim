vim.opt.number = true
vim.opt.relativenumber = true

-- Set tabstop, shiftwidth, and use spaces instead of tabs
vim.opt.tabstop = 4 -- number of spaces that <tab> uses
vim.opt.shiftwidth = 4 -- number of spaces to use for auto indent
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.softtabstop = 4 -- Number of spaces for <Tab> key in insert and replace mode

-- colorscheme
vim.cmd("colorscheme tokyonight")

-- tab width to 2 spaces for js files 
vim.api.nvim_exec([[
  augroup JavaScriptTabSize
    autocmd!
    autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
  augroup END
]], false)



