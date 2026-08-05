require("neo-tree").setup({
    source_selector = {
        winbar = true,
        statusline = false,
    },
    filesystem = {
        -- Disables neo-tree from automatically opening when you run `nvim .`
        hijack_netrw_behavior = "disabled",
        follow_current_file = {
            enabled = true,
        }
    }
})
