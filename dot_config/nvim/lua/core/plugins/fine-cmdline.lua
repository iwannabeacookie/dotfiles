return {}
-- return {
--     {
--         'VonHeikemen/fine-cmdline.nvim',
--         dependencies = {
--             'MunifTanjim/nui.nvim',
--         },
--         opts = {
--             popup = {
--                 border = {
--                     style = 'rounded',
--                 },
--                 win_options = {
--                     winhighlight = "Normal:Normal,FloatBorder:Normal",
--                 },
--                 relative = 'editor',
--             },
--         },
--         config = function(_, opts)
--             require('fine-cmdline').setup(opts)
--             vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })
--             vim.api.nvim_set_keymap('v', ':', '<cmd>FineCmdline \'<,\'><CR>', { noremap = true })
--         end,
--     }
-- }