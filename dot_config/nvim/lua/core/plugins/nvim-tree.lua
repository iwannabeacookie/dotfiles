return {
    'nvim-tree/nvim-tree.lua',

    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },

    config = function()
        require('nvim-tree').setup()
        vim.keymap.set('', '<leader>tt', '<cmd>NvimTreeToggle<cr>', { desc = '[T]oggle Nvim[T]ree' })

        -- vim.api.nvim_command(':NvimTreeToggle')
    end
}
