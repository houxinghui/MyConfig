return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "TodoTrouble", "TodoTelescope" },
    event = { "BufReadPost", "BufNewFile" },
    keys = {
        { "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Todo" }
    },
    opts = {}
}
