return {
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        branch = "canary",
        dependencies = {
            "github/copilot.vim",
            "nvim-lua/plenary.nvim", -- for curl, log wrapper
        },
        opts = {
            debug = true, -- Enable debugging
            context = 'buffers',
        },

        vim.keymap.set('n', "<leader>ccc", ":CopilotChatToggle<CR>", { desc = "[C]opilot [C]hat" }),
        vim.keymap.set('n', "<leader>ccq",
            function()
                local input = vim.fn.input("Quick Chat: ")
                if input ~= "" then
                    require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
                end
            end,
            { desc = "[C]opilot [C]hat [Q]uick Chat", }),
        vim.keymap.set('n', "<leader>ccg",
            function()
                local input = vim.fn.input("Generate: ")
                if input ~= "" then
                    require("CopilotChat").ask("/COPILOT_GENERATE Generate " .. input)
                end
            end,
            { desc = "[C]opilot [C]hat [G]enerate", }),
        vim.keymap.set('v', "<leader>cce",
            function()
                require("CopilotChat").ask("/COPILOT_EXPLAIN Explain how it works",
                    { selection = require("CopilotChat.select").visual })
            end,
            { desc = "[C]opilot [C]hat [E]xplain", }),
        vim.keymap.set('v', "<leader>ccr",
            function()
                require("CopilotChat").ask("/COPILOT_REVIEW", { selection = require("CopilotChat.select").visual })
            end,
            { desc = "[C]opilot [C]hat [R]eview", })
    }
}
