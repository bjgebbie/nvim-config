-- Margin line numbers
vim.cmd("set number relativenumber")

-- Horizontal overflow behavior
vim.cmd("set nowrap")

require("config.options.diagnostics").setup()
require("config.options.telescope").setup()
require("config.options.tabs").setup()
require("config.options.term")
