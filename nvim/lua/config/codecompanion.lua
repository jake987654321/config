require("codecompanion").setup({
  strategies = {
    chat = {
      adapter = "copilot",
    },
    inline = {
      adapter = "copilot",
    },
  },
  display = {
    chat = {
      window = {
        layout      = "vertical",   -- we want a vertical split
        position    = "right",      -- always on the right side
        width       = 80,           -- fixed 80 columns
        relative    = "editor",     -- relative to the full editor
        full_height = false,        -- don’t steal full height (let it respect your other splits)
        border      = "single",     -- whatever border style you like
        -- you can leave height/nil or tweak it if you prefer:
        -- height      = vim.o.lines,
      },
    },
  },
})

