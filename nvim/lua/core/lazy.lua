local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    require("plugins.colorscheme"),
    require("plugins.autopairs"),
    require("plugins.comment"),
    require("plugins.lualine"),
    require("plugins.bufferline"),
    require("plugins.surround"),
    require("plugins.telescope"),
    require("plugins.neotree"),
    require("plugins.lspconfig"),
    require("plugins.mason"),
    require("plugins.cmp"),
    require("plugins.treesitter"),
    require("plugins.alpha"),
    require("plugins.flash"),
    require("plugins.gitsigns"),
    require("plugins.barbecue"),
    require("plugins.todocomments"),
    require("plugins.todocomments"),
    require("plugins.vim-maximizer"),
    require("plugins.nvim-web-devicons"),
    require("plugins.noice"),
    require("plugins.markdown"),
})
