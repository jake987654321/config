---
-- LSP setup
---

vim.opt.signcolumn = "yes"

vim.diagnostic.config({
  virtual_text = true,
  severity_sort = true,
  float = {
    border = "rounded",
  },
})

-- Add completion capabilities to all LSP clients.
vim.lsp.config("*", {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

vim.lsp.config("ruff", {
  init_options = {
    settings = {
      lineLength = 100,
    },
  },
})

-- Make Lua LSP understand Neovim config files.
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

vim.api.nvim_create_autocmd("LspAttach", {
  desc = "LSP keymaps",
  callback = function(event)
    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, {
        buffer = event.buf,
        desc = desc,
      })
    end

    map("n", "K", function()
      vim.lsp.buf.hover({
        border = "rounded",
      })
    end, "LSP hover")
    map("n", "gd", vim.lsp.buf.definition, "Go to definition")
    map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
    map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
    map("n", "go", vim.lsp.buf.type_definition, "Go to type definition")
    map("n", "gr", vim.lsp.buf.references, "References")
    map("n", "gs", vim.lsp.buf.signature_help, "Signature help")

    map("n", "<F2>", vim.lsp.buf.rename, "Rename symbol")
    map({ "n", "x" }, "<F3>", function()
      vim.lsp.buf.format({ async = true })
    end, "Format")
    map("n", "<F4>", vim.lsp.buf.code_action, "Code action")

    map("n", "[d", vim.diagnostic.goto_prev, "Previous diagnostic")
    map("n", "]d", vim.diagnostic.goto_next, "Next diagnostic")
    map("n", "<leader>e", vim.diagnostic.open_float, "Line diagnostic")
    map("n", "<leader>q", vim.diagnostic.setloclist, "Diagnostics list")
  end,
})
