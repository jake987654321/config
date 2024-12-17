return {
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
}

--     {
--         'williamboman/mason.nvim',
--         build = ':MasonUpdate', -- Updates Mason registry
--         config = function()
--             require("mason").setup()
--         end,
--     },
--     {
--         'neovim/nvim-lspconfig',
--     },
--     {
--         'williamboman/mason-lspconfig.nvim',
--         dependencies = { 'williamboman/mason.nvim', 'neovim/nvim-lspconfig' },
--         config = function()
--             require("mason-lspconfig").setup()
--         end,
--     },
--     { 'hrsh7th/nvim-cmp' },     -- Main completion plugin
--     { 'hrsh7th/cmp-nvim-lsp' }, -- LSP completion source
--         --dependencies = {
--         --    'hrsh7th/cmp-buffer',   -- Buffer completion source
--         --    'hrsh7th/cmp-path',     -- File path completion source
--         --    'hrsh7th/cmp-cmdline',  -- Command line completion source
--         --},
--         --opts = {}
--     },
-- }
