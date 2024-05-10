return {
    "terrortylor/nvim-comment",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("nvim_comment").setup({
            line_mapping = "<C-_>",
        })
    end,
}
