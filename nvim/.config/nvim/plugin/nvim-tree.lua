require('nvim-tree').setup({
    filters = {custom = {"__pycache__"}},
    view = {width = 15}

})

-- Remap

vim.keymap.set('n','<leader>t',':NvimTreeToggle<CR>')
