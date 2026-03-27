vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.mouse = "a"       -- Enable mouse support in all modes
vim.opt.ignorecase = true --Ignore case in searches


vim.cmd.colorscheme("nordic")

-- fold setup
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 1 -- top level folds are open
