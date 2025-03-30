return {
    "nvimtools/none-ls.nvim",

    keys = {
        { "<leader>gf", vim.lsp.buf.format, desc = "Toggle file explorer" },
    },

    config = function ()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
            },
        })
    end
}
