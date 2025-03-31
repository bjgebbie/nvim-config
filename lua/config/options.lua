-- Tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Margin line numbers
vim.cmd("set number relativenumber")

-- Horizontal overflow behavior
vim.cmd("set nowrap")

-- Telescope colors
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#E68183" })
vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "#272a31" })
vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "#E68183" })
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = "#E68183" })
