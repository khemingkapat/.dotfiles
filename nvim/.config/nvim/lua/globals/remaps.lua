local opts = {noremap=true}
vim.keymap.set('t','<Esc>','<C-\\><C-n>',opts)
vim.keymap.set('n','<leader>h',':wincmd h<CR>',opts)
vim.keymap.set('n','<leader>j',':wincmd j<CR>',opts)
vim.keymap.set('n','<leader>k',':wincmd k<CR>',opts)
vim.keymap.set('n','<leader>l',':wincmd l<CR>',opts)
