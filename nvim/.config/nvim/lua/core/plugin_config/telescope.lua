require('telescope').setup()

vim.keymap.set('n','<leader>ff',':Telescope find_files<CR>')
vim.keymap.set('n','<leader>fg',':Telescope live_grep<CR>')


