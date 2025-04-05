vim.api.nvim_set_keymap("n", "<C-t>", ":lua toggle_terminal()<CR>i", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-t>", "<C-\\><C-n>:lua toggle_terminal()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-w>", "<C-\\><C-n>:winc k<CR>", { noremap = true, silent = true })
