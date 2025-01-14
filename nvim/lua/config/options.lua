
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

