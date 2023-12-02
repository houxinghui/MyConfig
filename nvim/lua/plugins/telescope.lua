-- return {
--   "nvim-telescope/telescope.nvim",
--   branch = "0.1.x",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
--     "nvim-tree/nvim-web-devicons",
--   },
--   config = function()
--     local telescope = require("telescope")
--     local actions = require("telescope.actions")
--
--     telescope.setup({
--       defaults = {
--         path_display = { "truncate " },
--         mappings = {
--           i = {
--             ["<C-k>"] = actions.move_selection_previous, -- move to prev result
--             ["<C-j>"] = actions.move_selection_next, -- move to next result
--             ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
--           },
--         },
--       },
--     })
--
--     telescope.load_extension("fzf")
--
--     -- set keymaps
--     local keymap = vim.keymap -- for conciseness
--
--     keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
--     keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
--     keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
--     keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find string under cursor in cwd" })
--     keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find string under cursor in cwd" })
--     keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
--   end,
-- }
return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = "Telescope",
    keys = {
        { "<leader>fr", "<CMD>Telescope oldfiles<CR>",   desc = "Recent" },
        { "<leader>ff", "<CMD>Telescope find_files<CR>", desc = "Files" },
        { "<leader>fs", "<CMD>Telescope live_grep<CR>",  desc = "Words" },
        { "<leader>fc", "<CMD>Telescope grep_string<CR>", desc = "Files" },
        { "<leader>fb", "<CMD>Telescope buffers<CR>", desc = "Files" },
    },
    opts = {
        defaults = {
            prompt_prefix = " ",
            selection_caret = " ",
            mappings = {
                i = {
                    ["<C-d>"] = function(...)
                        return require("telescope.actions").preview_scrolling_down(...)
                    end,
                    ["<C-u>"] = function(...)
                        return require("telescope.actions").preview_scrolling_up(...)
                    end
                },
                n = {
                    ["q"] = function(...)
                        return require("telescope.actions").close(...)
                    end
                }
            },
            file_ignore_patterns = {
                "node_modules"
            }
        }
    }
}
