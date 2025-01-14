return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        pickers = {
            find_files = {
                follow = true,
            },
            live_grep = {
                follow = true,
            },
        }, -- pickers
        defaults = {
            mappings = {
                i = {
                    ['<C-d>'] = require('telescope.actions').delete_buffer,
                }, -- i
                n = {
                    ['d'] = require('telescope.actions').delete_buffer,
                    ['q'] = require('telescope.actions').close,
                }, -- n
            } -- mappings
        } -- defaults
    }, -- opts
} -- top

