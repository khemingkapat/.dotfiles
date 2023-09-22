require('lualine').setup({
    sections={
        lualine_x={
            'os.date("%H:%M")'
        },
        lualine_y={
            'encoding','fileformat','filetype','progress'
        }
    },
    options={
        sections_separators = '',
        components_separators = '',
    }
})
