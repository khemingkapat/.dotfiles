local opts = {noremap=true}
vim.keymap.set('t','<Esc>','<C-\\><C-n>',opts)
vim.keymap.set('n','<C-h>',':wincmd h<CR>',opts)
vim.keymap.set('n','<C-j>',':wincmd j<CR>',opts)
vim.keymap.set('n','<C-k>',':wincmd k<CR>',opts)
vim.keymap.set('n','<C-l>',':wincmd l<CR>',opts)
