return {
    {
        "nvimtools/none-ls-extras.nvim",
        event = "BufRead",
    },
    {
        "nvimtools/none-ls.nvim",
        event = "BufRead",
        keys = {
            { "<leader>gf", vim.lsp.buf.format, desc = "Format File" },
        },

        config = function()
            local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
            local null_ls = require("null-ls")

            null_ls.setup({
                -- you can reuse a shared lspconfig on_attach callback here
                on_attach = function(client, bufnr)
                    if client.supports_method("textDocument/formatting") then
                        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            group = augroup,
                            buffer = bufnr,
                            callback = function()
                                -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                                -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
                                vim.lsp.buf.format({ async = false })
                            end,
                        })
                    end
                end,
                sources = {
                    null_ls.builtins.formatting.stylua,
                    null_ls.builtins.formatting.clang_format,
                    null_ls.builtins.formatting.prettier,
                    require("none-ls.diagnostics.eslint"),
                },
            })
        end,
    },
}
