return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        event = "BufRead",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "clangd",
                    "eslint",
                    "terraformls",
                },
            })
        end,
    },
    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "nvimtools/none-ls.nvim",
        },
        config = function()
            require("mason-null-ls").setup({
                ensure_installed = {
                    "stylua",
                    "tflint",
                    "prettier",
                },
            })
        end,
    },
}
