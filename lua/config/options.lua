vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.mouse = "a"       -- Enable mouse support in all modes
vim.opt.ignorecase = true --Ignore case in searches


-- colorscheme set at nordic.lua
vim.cmd.colorscheme("nordic")

-- fold setup
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99



-- NEOVIDE

vim.o.guifont = "JetBrainsMono_Nerd_Font:h10.9" -- font for neovide

-- Zoom features in neovide
-- Initialize scale factor if not already set
vim.g.neovide_scale_factor = vim.g.neovide_scale_factor or 1.0

-- Zoom In
vim.keymap.set('n', '<C-=>', function()
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1
end, { desc = "Zoom in Neovide" })

vim.keymap.set('n', '<C-+>', function()
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1
end, { desc = "Zoom in Neovide" })

-- Zoom Out
vim.keymap.set('n', '<C-->', function()
    if vim.g.neovide_scale_factor > 0.3 then
        vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1
    end
end, { desc = "Zoom out Neovide" })

-- Reset Zoom
vim.keymap.set('n', '<C-0>', function()
    vim.g.neovide_scale_factor = 1.0
end, { desc = "Reset zoom Neovide" })
