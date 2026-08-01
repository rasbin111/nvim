require('nordic').setup({
    -- Other nordic configuration options...

    on_highlight = function(highlights, palette)
        -- Standard Vim comments
        highlights.Comment = {
            fg = '#818181', -- Change this hex to your preferred color (e.g., #8FBCBB is Nord cyan)
            italic = true   -- Keeps comments italicized
        }

        -- Tree-sitter comments (Ensures newer language parsers pick up the change)
        highlights['@comment'] = {
            link = 'Comment'
        }
    end
})

-- load the colorscheme after setup
vim.cmd('colorscheme nordic')
