vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- lsp related 
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "gl", function ()
    vim.diagnostic.open_float(nil, {border = "rounded", focus = true})
end)

vim.keymap.set("n", "<leader>e", ":Neotree toggle<cr>") 

vim.keymap.set("t", "<esc>", "<c-\\><c-n>") 
vim.keymap.set("n", "<leader>tt", ":ToggleTerm<cr>") 


