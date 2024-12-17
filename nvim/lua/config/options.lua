
-- Leader
vim.g.mapleader = " " -- Spacebar as the leader key

-- General settings
vim.o.number = true            -- Show line numbers
vim.o.relativenumber = true    -- Show relative line numbers
vim.o.wrap = false             -- Disable line wrapping
vim.o.cursorline = true        -- Highlight the current line
vim.o.scrolloff = 8            -- Keep 8 lines visible above/below the cursor
vim.o.sidescrolloff = 8        -- Keep 8 columns visible left/right of the cursor
vim.o.mouse = "a"              -- Enable mouse support
vim.o.clipboard = "unnamedplus" -- Use system clipboard
vim.o.swapfile = false         -- Disable swap files
vim.o.backup = false           -- Disable backup files
vim.o.undofile = true          -- Enable persistent undo
vim.o.updatetime = 300         -- Faster update time for better experience

-- Search settings
vim.o.ignorecase = true        -- Ignore case in search patterns
vim.o.smartcase = true         -- Override ignorecase if search pattern contains uppercase
vim.o.incsearch = true         -- Incremental search

-- Tab and indent settings
vim.o.tabstop = 4              -- Number of spaces for a tab
vim.o.shiftwidth = 4           -- Number of spaces for auto-indent
vim.o.expandtab = true         -- Convert tabs to spaces
vim.o.smartindent = true       -- Enable smart indentation

function custom_fold_text()
    -- Get the first line of the fold
    local line = vim.fn.getline(vim.v.foldstart)
    line = vim.trim(line)
    local line_count = vim.v.foldend - vim.v.foldstart + 1
    local indent = string.rep(" ", vim.fn.indent(vim.v.foldstart)-1)
    return string.format("%s%s ... [%d lines]", indent, line, line_count)
end

-- Folding
vim.cmd [[highlight Folded guibg=NONE guifg=Normal]]
vim.o.foldmethod = 'expr' -- Use expression-based folding
vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()' -- Use Tree-sitter for fold expressions
vim.opt.foldtext = "v:lua.custom_fold_text()"

-- Appearance
vim.o.termguicolors = true     -- Enable true colors

-- vim.opt.foldenable = true -- Start with folding enabled
-- vim.opt.foldlevel = 99 -- Open all folds by default
-- vim.opt.fillchars = { fold = " " }
-- vim.opt.foldcolumn = '1'                -- Show fold column with marker
-- vim.opt.fillchars = {
--     fold = " ",         -- Character for folds
--     -- foldopen = "",    -- Icon for open folds
--     -- foldclose = "",   -- Icon for closed folds
--     -- foldsep = " "       -- Separator between folds
-- }

-- function HighlightedFoldtext()
--   local pos = vim.v.foldstart
--   local line = vim.api.nvim_buf_get_lines(0, pos - 1, pos, false)[1]
--   local lang = vim.treesitter.language.get_lang(vim.bo.filetype)
--   local parser = vim.treesitter.get_parser(0, lang)
--   local query = vim.treesitter.query.get(parser:lang(), "highlights")
-- 
--   if query == nil then
--     return vim.fn.foldtext()
--   end
-- 
--   local tree = parser:parse({ pos - 1, pos })[1]
--   local result = {}
-- 
--   local line_pos = 0
-- 
--   local prev_range = nil
-- 
--   for id, node, _ in query:iter_captures(tree:root(), 0, pos - 1, pos) do
--     local name = query.captures[id]
--     local start_row, start_col, end_row, end_col = node:range()
--     if start_row == pos - 1 and end_row == pos - 1 then
--       local range = { start_col, end_col }
--       if start_col > line_pos then
--         table.insert(result, { line:sub(line_pos + 1, start_col), "Folded" })
--       end
--       line_pos = end_col
--       local text = vim.treesitter.get_node_text(node, 0)
--       if prev_range ~= nil and range[1] == prev_range[1] and range[2] == prev_range[2] then
--         result[#result] = { text, "@" .. name }
--       else
--         table.insert(result, { text, "@" .. name })
--       end
--       prev_range = range
--     end
--   end
-- 
--   return result
-- end
-- 
-- local bg = vim.api.nvim_get_hl(0, { name = "StatusLine" }).bg
-- local hl = vim.api.nvim_get_hl(0, { name = "Folded" })
-- hl.bg = bg
-- vim.api.nvim_set_hl(0, "Folded", hl)
-- 
-- --vim.opt.foldtext=[[luaeval('HighlightedFoldtext')()]]
-- vim.opt.foldtext='v:lua.HighlightedFoldText()'



