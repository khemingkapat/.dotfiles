local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.black
    }
})

vim.keymap.set('n','<leader>f','<CR>:lua vim.lsp.buf.format()<CR>')
