return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            auto_install = true,
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                filetype = { "lua" },
            })

            lspconfig.clangd.setup({
                capabilities = capabilities,
                filetype = { "c", "cpp" },
                cmd = { "clangd", "--offset-encoding=utf-16" },
            })

            lspconfig.pyright.setup({
                capabilities = capabilities,
                filetype = { "python" },
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
            vim.keymap.set("n", "<leader>em", vim.diagnostic.open_float, {})
        end,
    },
}
