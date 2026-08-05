require("neo-tree").setup({
    source_selector = {
        winbar = true,
        statusline = false,
    },
    filesystem = {
        follow_current_file = {
            enabled = true,
        }
    }
})
