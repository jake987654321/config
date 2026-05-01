-- Custom
vim.api.nvim_set_keymap('n', 'gb', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gB', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dm', ':lua ToggleDocumentMode()<CR>', { noremap = true, silent = true })

-- absolute path to current buffer directory - ready to copy
vim.keymap.set("n", "<leader>pd", function()
  local dir = vim.fn.expand("%:p:h")
  if dir == "" then
    vim.notify("No file path (unnamed buffer)", vim.log.levels.WARN)
    return
  end
  vim.fn.setreg("+", dir) -- system clipboard
  vim.fn.setreg('"', dir) -- unnamed register
  vim.notify("Copied directory path: " .. dir)
end, { desc = "Copy directory path of current buffer" })


-- absolute path to current buffer - ready to copy
vim.keymap.set("n", "<leader>pf", function()
  local full = vim.fn.expand("%:p:h") .. "/" .. vim.fn.expand("%:t")
  if full == "/" then
    vim.notify("No file path (unnamed buffer)", vim.log.levels.WARN)
    return
  end
  vim.fn.setreg("+", full)
  vim.fn.setreg('"', full)
  vim.notify("Copied full path + filename: " .. full)
end, { desc = "Copy full path + filename" })

-- Terminal 
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })

-- NeoTree
vim.keymap.set('n', '<Leader>E', ':Neotree toggle<CR>', { noremap = true, silent = true })

-- Telescope 
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<Leader>ff', builtin.find_files, { noremap = true, silent = true, desc = "Find Files" })
-- vim.keymap.set('n', '<Leader>fg', builtin.git_files, { noremap = true, silent = true, desc = "Git Files" })
-- vim.keymap.set('n', '<Leader>b', builtin.buffers, { noremap = true, silent = true, desc = "Buffers" })
-- vim.keymap.set('n', '<Leader>*', builtin.grep_string, { noremap = true, silent = true, desc = "Grep String" })
-- vim.keymap.set('n', '<Leader>/', builtin.live_grep, { noremap = true, silent = true, desc = "Grep" })

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

