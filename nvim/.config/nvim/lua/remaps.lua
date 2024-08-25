local opts = {noremap=true}

vim.keymap.set('t','<Esc>','<C-\\><C-n>',opts)
vim.keymap.set('l','yy','+y',opts)

function _toggle_wrap()
    if vim.api.nvim_get_option_value("wrap",{}) then
        vim.cmd("set nowrap")
    else
        vim.cmd("set wrap")
    end
end

vim.keymap.set('n','<leader>lr',"<cmd>lua _toggle_wrap()<CR>",opts)


