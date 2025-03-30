return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "clangd"
                }

            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        keys = {
            { "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", desc = "Display LSP Code Actions" },
        },
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({
                vim.diagnostic.config({
                    virtual_text = true,
                    signs = true,
                    underline = true,
                    update_in_insert = false,
                    severity_sort = true,
                })
            })
            lspconfig.clangd.setup({
                    vim.diagnostic.config({
                    virtual_text = true,
                    signs = true,
                    underline = true,
                    update_in_insert = false,
                    severity_sort = true,
                })
            })
        end
    }
}
