vim.lsp.config("luals", {
    cmd = {'lua-language-server'},
    filetypes = {'lua'},
})

vim.lsp.enable({'gopls', 'pyright', 'luals'})
