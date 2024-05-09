return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            direction = "float",
        })
        local Terminal = require("toggleterm.terminal").Terminal
        local default = Terminal:new({ cmd = "clear ; zsh"})
        
        function _default_toggle()
            default:toggle()
        end

        -- vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<CR>")
        vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>lua _default_toggle()<CR>>", { noremap = true, silent = true })

        local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

        function _lazygit_toggle()
            lazygit:toggle()
        end

        vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>>", { noremap = true, silent = true })
    end,
}
