return {
    {
        "rcarriga/nvim-notify",
        config = function()
            require("notify").setup({
                background_colour = "#111111",
            })
        end,
    },
    {
        "folke/noice.nvim",
        config = function()
            require("noice").setup()
        end,
        presets = {
            bottom_search = true, -- use a classic bottom cmdline for search
            command_palette = true, -- position the cmdline and popupmenu together
            long_message_to_split = true, -- long messages will be sent to a split
            inc_rename = false,  -- enables an input dialog for inc-rename.nvim
            lsp_doc_border = true, -- add a border to hover docs and signature help
        },
        event = "VeryLazy",
        opts = {},
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
    },
}
