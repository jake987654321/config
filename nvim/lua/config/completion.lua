---
-- Autocompletion setup
---

local cmp = require("cmp")

-- Make completion/documentation popups visually distinct.
-- Adjust colors to taste.
vim.api.nvim_set_hl(0, "CmpPmenu", { bg = "#1e1e2e" })
vim.api.nvim_set_hl(0, "CmpPmenuSel", { bg = "#45475a", bold = true })
vim.api.nvim_set_hl(0, "CmpBorder", { fg = "#89b4fa", bg = "#1e1e2e" })
vim.api.nvim_set_hl(0, "CmpDoc", { bg = "#181825" })
vim.api.nvim_set_hl(0, "CmpDocBorder", { fg = "#a6e3a1", bg = "#181825" })

cmp.setup({
  sources = {
    { name = "nvim_lsp" },
  },

  window = {
    completion = cmp.config.window.bordered({
      border = "rounded",
      winhighlight = table.concat({
        "Normal:CmpPmenu",
        "FloatBorder:CmpBorder",
        "CursorLine:CmpPmenuSel",
        "Search:None",
      }, ","),
    }),

    documentation = cmp.config.window.bordered({
      border = "rounded",
      max_height = 15,
      max_width = 80,
      winhighlight = table.concat({
        "Normal:CmpDoc",
        "FloatBorder:CmpDocBorder",
        "Search:None",
      }, ","),
    }),
  },

  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),

    ["<CR>"] = cmp.mapping.confirm({
      select = true,
    }),

    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { "i", "s" }),

    -- Scroll the documentation/help window.
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),

    -- Alternative mappings if you prefer arrows:
    ["<C-d>"] = cmp.mapping.scroll_docs(4),
    ["<C-u>"] = cmp.mapping.scroll_docs(-4),

    ["<Esc>"] = cmp.mapping.abort(),
  }),
})
