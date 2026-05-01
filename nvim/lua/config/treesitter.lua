local M = {}

M.languages = {
  "python",
  "c",
  "rst",
  "markdown",
  "markdown_inline",
  "lua",
  "javascript",
  "html",
  "css",
  "vim",
  "vimdoc",
  "query",
}

local function parser_installed(lang)
  local ok, parsers = pcall(vim.treesitter.get_parser_configs)
  if not ok then
    return false
  end

  -- On newer Nvim this may not exist or may not be useful for installed state.
  -- We primarily protect vim.treesitter.start() with pcall below.
  return parsers[lang] ~= nil
end

function M.install()
  local ok, ts = pcall(require, "nvim-treesitter")
  if not ok then
    return
  end

  ts.install(M.languages)
end

function M.setup_autocmds()
  vim.api.nvim_create_autocmd("FileType", {
    group = vim.api.nvim_create_augroup("UserTreesitter", { clear = true }),
    pattern = M.languages,
    callback = function(args)
      local bufnr = args.buf
      local ft = vim.bo[bufnr].filetype

      -- Start native treesitter highlighting.
      -- pcall keeps random parser/query problems from breaking buffer open.
      local ok = pcall(vim.treesitter.start, bufnr, ft)
      if not ok then
        return
      end

      -- Native treesitter folds.
      vim.wo.foldmethod = "expr"
      vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"

      -- nvim-treesitter indentation.
      -- Keep this conservative; indentation queries can be less stable than highlights.
      if ft ~= "markdown" and ft ~= "rst" then
        vim.bo[bufnr].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end
    end,
  })
end

M.install()
M.setup_autocmds()

return M
