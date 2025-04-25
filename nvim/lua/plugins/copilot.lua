
return {
  {
    "github/copilot.vim",
    event = "InsertEnter",  -- load when entering Insert mode
    config = function()
      -- Disable default tab mapping to prevent conflicts
      vim.g.copilot_no_tab_map = true
      -- Map Ctrl-J to accept Copilot suggestions in insert mode
      vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
      -- Additional configuration can go here as needed.
    end,
  },
}












