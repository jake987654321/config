return {
 -- the colorscheme should be available when starting Neovim
 {
   "folke/tokyonight.nvim",
   lazy = false, -- make sure we load this during startup if it is your main colorscheme
   priority = 1000, -- make sure to load this before all the other start plugins
   config = function()
     -- load the colorscheme here
     vim.cmd([[colorscheme tokyonight]])
   end,
 },
}

-- colors.lua (or your colorscheme spec file)
-- -- return {
--   {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {
--       style = "night",          -- or "storm" / "moon" / "day"
--       transparent = false,      -- IMPORTANT: let floats get a real bg
--       styles = {
--         floats = "dark",        -- make float bg darker than Normal
--         sidebars = "dark",
--       },
--       on_highlights = function(hl, c)
--         -- Ensure floats actually have a BG (not NONE), so shading is visible
--         hl.NormalFloat = { bg = c.bg_dark }   -- a bit darker than Normal
--         hl.FloatBorder = { fg = c.blue, bg = c.bg_dark }
--       end,
--     },
--     config = function(_, opts)
--       require("tokyonight").setup(opts)
--       vim.cmd.colorscheme("tokyonight")
--
--       -- make sure truecolor is enabled (or shading looks flat)
--       vim.opt.termguicolors = true
--     end,
--   }
-- }
-- return {
--   {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {
--       style = "night",
--       transparent = false,
--       styles = { floats = "dark", sidebars = "dark" },
--       on_highlights = function(hl, c)
--         -- Make float bg solid so terminals look distinct
--         hl.NormalFloat = { bg = c.bg_dark }
--         hl.FloatBorder = { fg = c.blue, bg = c.bg_dark }
--       end,
--     },
--     config = function(_, opts)
--       require("tokyonight").setup(opts)
--       vim.opt.termguicolors = true
--       vim.cmd.colorscheme("tokyonight")
--
--       -- === Give terminals a different color scheme (example: "gruvbox-ish") ===
--       -- Reset these if colorscheme changes
--       local function set_terminal_palette()
--         -- dark bg / light fg
--         vim.g.terminal_color_0  = "#282828" -- black
--         vim.g.terminal_color_7  = "#ebdbb2" -- white
--         -- brights
--         vim.g.terminal_color_8  = "#928374"
--         vim.g.terminal_color_15 = "#fbf1c7"
--         -- red
--         vim.g.terminal_color_1  = "#cc241d"
--         vim.g.terminal_color_9  = "#fb4934"
--         -- green
--         vim.g.terminal_color_2  = "#98971a"
--         vim.g.terminal_color_10 = "#b8bb26"
--         -- yellow
--         vim.g.terminal_color_3  = "#d79921"
--         vim.g.terminal_color_11 = "#fabd2f"
--         -- blue
--         vim.g.terminal_color_4  = "#458588"
--         vim.g.terminal_color_12 = "#83a598"
--         -- magenta
--         vim.g.terminal_color_5  = "#b16286"
--         vim.g.terminal_color_13 = "#d3869b"
--         -- cyan
--         vim.g.terminal_color_6  = "#689d6a"
--         vim.g.terminal_color_14 = "#8ec07c"
--
--         -- Optional: distinct terminal window bg/border (editor stays tokyonight)
--         vim.api.nvim_set_hl(0, "TerminalNormal",  { bg = "#1f1f1f" })
--         vim.api.nvim_set_hl(0, "TerminalNormalNC",{ bg = "#1a1a1a" })
--         vim.api.nvim_set_hl(0, "TerminalBorder",  { fg = "#83a598", bg = "#1f1f1f" })
--       end
--
--       set_terminal_palette()
--       vim.api.nvim_create_autocmd("ColorScheme", {
--         callback = set_terminal_palette,
--       })
--     end,
--   },
-- }
