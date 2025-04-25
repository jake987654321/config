-- Custom
vim.api.nvim_set_keymap('n', 'gb', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gB', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dm', ':lua ToggleDocumentMode()<CR>', { noremap = true, silent = true })

-- NeoTree
vim.keymap.set('n', '<Leader>E', ':Neotree toggle<CR>', { noremap = true, silent = true })

-- Telescope 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Leader>ff', builtin.find_files, { noremap = true, silent = true, desc = "Find Files" })
vim.keymap.set('n', '<Leader>fg', builtin.git_files, { noremap = true, silent = true, desc = "Git Files" })
vim.keymap.set('n', '<Leader>b', builtin.buffers, { noremap = true, silent = true, desc = "Buffers" })
vim.keymap.set('n', '<Leader>*', builtin.grep_string, { noremap = true, silent = true, desc = "Grep String" })
vim.keymap.set('n', '<Leader>/', builtin.live_grep, { noremap = true, silent = true, desc = "Grep" })

-- Code Companion
vim.api.nvim_set_keymap('n', '<leader>cc', ':CodeCompanionChat toggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cp', ':CodeCompanion <CR>', { noremap = true, silent = true })

-- LSP 
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set('n', '[E', function()
  vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Previous Error" })

vim.keymap.set('n', ']E', function()
  vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { desc = "Next Error" })

