require('minuet').setup {
    provider = 'gemini',
    notify = "debug",
    n_completions = 1,
    context_window = 512,
    debounce = 600,
    throttle = 1500,

    virtualtext = {
        auto_trigger_ft = {},
        keymap = {
            accept = '<A-A>',
            accept_line = '<A-a>',
            accept_n_lines = '<A-z>',
            prev = '<A-[>',
            next = '<A-]>',
            dismiss = '<A-e>',
        },
    },

    lsp = {
        enabled_ft = {}, -- off, since you're using nvim-cmp
    },

    provider_options = {
        openai_compatible = {
            api_key = 'TERM',
            name = 'LMStudio',
            end_point = 'http://localhost:1234/v1/chat/completions',
            model = 'qwen/qwen2.5-coder-14b',
            stream = true,
            optional = { max_tokens = 264, top_p = 0.9 },
        },
        gemini = {
            model = 'gemini-2.5-flash',
            api_key = 'GEMINI_API_KEY',
            end_point = 'https://generativelanguage.googleapis.com/v1beta/models',
            optional = {
                generationConfig = {
                    thinkingConfig = { thinkingBudget = 0 },
                },
            },
        },
    },
}
