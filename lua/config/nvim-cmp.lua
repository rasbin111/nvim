local cmp = require("cmp")
cmp.setup({
    sources = {
        {name = "buffer"},
        {name = "nvim_lsp"},
    }, 
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = function(fallback)
            if cmp.visible() then 
                cmp.select_next_item()
            else
                fallback()
            end
        end ,
        ['<S-Tab>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
        ['<CR>'] = cmp.mapping.confirm({select = true}),
    })
})
