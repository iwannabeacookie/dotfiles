return {
    {
        'navarasu/onedark.nvim',
        priority = 1000,
        opts =
        {
            style = 'deep',
            toggle_style_key = '<F10>',
            transparent = true,
        },
        config = function(_, opts)
            require('onedark').setup(opts)
            vim.cmd.colorscheme 'onedark'
        end,
    }
}
