require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"pyright","rust_analyzer"}
})

local on_attach = function(client,bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

    -- Mappings
    local opts = { noremap=true, silent=true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>Telescope lsp_references<CR>', opts)
    buf_set_keymap('n', '<space>em', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    -- vim.api.nvim_create_autocmd("CursorHold", {
    --     buffer = bufnr,
    --     callback = function()
    --         local opts = {
    --             focusable = false,
    --             close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
    --             border = 'rounded',
    --             source = 'always',
    --             prefix = ' ',
    --             scope = 'cursor',
    --         }
    --         vim.diagnostic.open_float(nil, opts)
    --     end
    --     })
    end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'python'},



})

require("lspconfig").rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"rust"},
    root_dir = require("lspconfig").util.root_pattern("Cargo.toml"),
    settings = {
        ['rust-analyzer'] = {
            cargo = {
                allFeatures = true,
            }
        }
    }

})


require("lspconfig").clangd.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'c'},
})
