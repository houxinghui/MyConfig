return {
    {
        "williamboman/mason.nvim",
        cmd = "Mason",
        keys = {
            { "<leader>m", "<CMD>Mason<CR>" }
        },
        config = function()
            require("mason").setup({})
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = true,
        opts = {
            ensure_installed = {
                "lua_ls",
                "tsserver",
                "volar",
                "html",
                "pylsp"
            }
        },
        config = function(_, opts)
            require("mason-lspconfig").setup(opts)
        end
    }
}
