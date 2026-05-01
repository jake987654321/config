-- return {'akinsho/toggleterm.nvim', version = "*", config = true}
return {
  "akinsho/toggleterm.nvim",
  version = "*", -- use latest
  config = function()
    require("toggleterm").setup{
      open_mapping = [[<C-\>]], -- toggle terminal with Ctrl-\
      hide_numbers = true,
      shade_terminals = true,
      shading_factor = -20,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      --direction = "float",      -- use floating window
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",     -- "single", "double", "shadow", "curved" also available
        winblend = 0,
      }
    }
  end
}
