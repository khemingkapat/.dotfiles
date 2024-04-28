return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            direction = "float"
        })
        vim.keymap.set('n', '<leader>t', '<cmd>ToggleTerm<CR>');

        local Terminal = require('toggleterm.terminal').Terminal
        local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

        function _lazygit_toggle()
            lazygit:toggle();
        end

        vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>>", { noremap = true, silent = true })
    end

}
