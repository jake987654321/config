return {
    {
        'nvim-treesitter/nvim-treesitter',
        commit = 'cfc6f2c117aaaa82f19bcce44deec2c194d900ab', 
        build = ':TSUpdate', -- Auto-update Tree-sitter parsers
        event = { 'BufReadPost', 'BufNewFile' }, -- Lazy-load on file open
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = { "python", "c", "rst", "markdown", "lua", "javascript", "html", "css" }, -- Add your languages here
                highlight = {
                    enable = true, -- Enable syntax highlighting
                    additional_vim_regex_highlighting = false, -- Disable default Vim regex highlighting
                },
                indent = {
                    enable = true, -- Enable Tree-sitter-based indentation
                },
                -- incremental_selection = {
                --     enable = true, -- Enable incremental selection
                --     keymaps = {
                --         init_selection = "gnn", -- Start selection
                --         node_incremental = "grn", -- Increment to next node
                --         scope_incremental = "grc", -- Increment to scope
                --         node_decremental = "grm", -- Decrement selection
                --     },
                -- },
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer", -- Select around a function
                            ["if"] = "@function.inner", -- Select inside a function
                            ["ac"] = "@class.outer", -- Select around a class
                            ["ic"] = "@class.inner", -- Select inside a class
                        },
                    },
                },
            })
        end,
    },
    {
        'nvim-treesitter/playground',
        cmd = 'TSPlaygroundToggle', 
        opts = {},
    },
    {
        'nvim-treesitter/nvim-treesitter-context'
    },
}
