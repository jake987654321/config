-- Toggle flag for Document Mode
local document_mode_enabled = false

function ToggleDocumentMode()
    if document_mode_enabled then
        -- Disable Document Mode
        vim.opt.wrap = false
        vim.opt.linebreak = false
        vim.opt.wrapscan = true
        vim.opt.spell = false
        vim.opt.relativenumber = true
        vim.opt.number = true
        vim.api.nvim_del_keymap('n', 'j') -- Remove custom key mappings
        vim.api.nvim_del_keymap('n', 'k')
        print("Document Mode disabled")
    else
        -- Enable Document Mode
        vim.opt.wrap = true
        vim.opt.linebreak = true
        vim.opt.wrapscan = false
        vim.opt.spell = true
        vim.opt.spelllang = { "en" } -- Set spell checking language to English
        vim.opt.relativenumber = false
        vim.opt.number = true
        vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })
        print("Document Mode enabled")
    end
    document_mode_enabled = not document_mode_enabled
end


