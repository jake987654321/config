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
-- return {
--     "akinsho/toggleterm.nvim",
--     version = "*",
--     config = function()
--         require("toggleterm").setup {
--             --direction = "float",
--             --float_opts = { border = "rounded", winblend = 0 },
--             open_mapping = [[<C-\>]],
--             shade_terminals = true,
--             shading_factor = 2,
--             start_in_insert = true,
--         }
--
--         -- Terminal windows use custom bg + border, editor stays TokyoNight
--         vim.api.nvim_create_autocmd("TermOpen", {
--             pattern = "term://*",
--             callback = function()
--                 vim.wo.winhighlight =
--                 "Normal:TerminalNormal,NormalNC:TerminalNormalNC,FloatBorder:TerminalBorder,WinSeparator:TerminalBorder"
--             end,
--         })
--     end,
-- }
-- return {
--   "akinsho/toggleterm.nvim",
--   version = "*",
--   config = function()
--     local toggleterm = require("toggleterm")
--
--     toggleterm.setup{
--       shade_terminals = true,
--       shading_factor = 2,
--       start_in_insert = true,
--       persist_size = true,
--       direction = "horizontal", -- default if you just use :ToggleTerm
--     }
--
--     -- Floating terminal bound to <C-|>
--     vim.keymap.set({ "n", "t" }, "<C-|>", function()
--       toggleterm.toggle(1, 20, nil, "float")
--     end, { noremap = true, silent = true, desc = "Toggle floating terminal" })
--
--     -- Horizontal split terminal bound to <C-\>
--     vim.keymap.set({ "n", "t" }, "<C-\\>", function()
--       toggleterm.toggle(2, 20, nil, "horizontal")
--     end, { noremap = true, silent = true, desc = "Toggle split terminal" })
--   end,
-- }
