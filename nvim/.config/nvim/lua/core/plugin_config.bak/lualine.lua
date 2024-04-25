return {
    "nvim-lualine/lualine.nvim",
    config = function()
        sections = {
            lualine_x = {
                'os.date("%H:%M")'
            },
            lualine_y = {
                'encoding', 'fileformat', 'filetype', 'progress'
            }
        }
        options = {
            sections_separators = '',
            components_separators = '',
        }
    end
}
