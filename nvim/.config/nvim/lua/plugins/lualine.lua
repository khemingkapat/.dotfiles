return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require('lualine').setup({
        sections = {
            lualine_x = {'os.date("%H:%M")'},
            lualine_y = {'encoding','fileformat','filetype','progress'},
        },
        options={
            theme='dracula',
            sections_separators = '',
            components_separators='',
        }
    })
    end
}
