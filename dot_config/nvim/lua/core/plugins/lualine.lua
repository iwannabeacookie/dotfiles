local helpers = require('helpers')

return {
    {
        'nvim-lualine/lualine.nvim',
        opts = {
            options = {
                theme = 'onedark',
                section_separators = { left = '', right = '' },
                component_separators = { left = '', right = '' },
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff' },
                lualine_c = { helpers.getCurrFileParentDirectory, 'filename' },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'filename' },
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {},
            extensions = { 'fugitive', 'nvim-tree' },
        }
    }
}
