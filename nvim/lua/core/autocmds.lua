-- Highlight on yank
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
    pattern = { "*" },
    callback = function()
        vim.highlight.on_yank({
            timeout = 200
        })
    end
})

-- Disable comment continuation by removing the 'o' and 'r'
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = { "*" },
    callback = function()
        vim.opt.formatoptions = vim.opt.formatoptions
            - "o"
            - "r"
    end
})

-- Auto save when leaving insert mode or when text is changed
-- vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
--     pattern = { "*" },
--     callback = function()
--         vim.cmd("silent! wa")
--     end
-- })

-- Set no relativenumber when entering insert mode
-- vim.api.nvim_create_autocmd({ "InsertEnter" }, {
--     pattern = { "*" },
--     callback = function ()
--         vim.cmd("set norelativenumber")
--     end
-- })

-- Set relativenumber when leaving insert mode
-- vim.api.nvim_create_autocmd({ "InsertLeave" }, {
--     pattern = { "*" },
--     callback = function ()
--         vim.cmd("set relativenumber")
--     end
-- })
