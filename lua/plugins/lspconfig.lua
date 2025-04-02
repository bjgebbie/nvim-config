return {
    "neovim/nvim-lspconfig",
    keys = {
        { "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>",   desc = "Display LSP Code Actions" },
        { "<leader>ce", ":lua vim.diagnostic.open_float()<CR>", desc = "Display LSP Code Errors" },
    },
    config = function()
        local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        lspconfig.eslint.setup({
            on_attach = function(bufnr)
                vim.api.nvim_create_autocmd("BufWritePre", {
                    buffer = bufnr,
                    command = "EslintFixAll",
                })
            end,
            config = function()
                settings = {
                    enable = false,
                }
            end,
        })
        lspconfig.ts_ls.setup({
            capabilities,
        })
        lspconfig.lua_ls.setup({
            capabilities,
        })
        lspconfig.clangd.setup({
            capabilities,
        })
    end,
}
