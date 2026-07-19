return {
    'milanglacier/minuet-ai.nvim',
    config = function()
        require('minuet').setup {
            provider = 'gemini',
            n_completions = 1,    -- save resources for local models
            context_window = 512, -- start small, increase once you know your GPU can handle more
            debounce = 600,
            throttle = 1500,
            provider_options = {
                openai_compatible = {
                    api_key = 'TERM', -- placeholder env var, LM Studio doesn't need a real key
                    name = 'LMStudio',
                    end_point = 'http://localhost:1234/v1/chat/completions',
                    model = 'qwen/qwen2.5-coder-14b',
                    stream = true,
                    optional = {
                        max_tokens = 264,
                        top_p = 0.9,
                    },
                },
                gemini = {
                    model = 'gemini-2.5-flash',
                    -- export GEMINI_API_KEY="AIza...your-actual-key-here" on ~/.bashrc or ~/.zshrc
                    api_key = 'GEMINI_API_KEY',
                    end_point = 'https://generativelanguage.googleapis.com/v1beta/models',
                    optional = {
                        generationConfig = {
                            thinkingConfig = {
                                -- Disable thinking is recommended
                                thinkingBudget = 0,
                            },
                        },
                    },
                },

            },
        }
    end,
}
