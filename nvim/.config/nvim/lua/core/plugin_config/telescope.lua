require('telescope').setup()

vim.keymap.set('n','<leader>ff',':Telescope find_files theme=dropdown<CR>')
vim.keymap.set('n','<leader>fg',':Telescope live_grep theme=dropdown<CR>')


