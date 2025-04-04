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

-- Diagnostic squiggle
vim.cmd([[
  highlight DiagnosticUnderlineError guisp=Red gui=undercurl
  highlight DiagnosticUnderlineWarn guisp=Yellow gui=undercurl
  highlight DiagnosticUnderlineHint guisp=Blue gui=undercurl
  highlight DiagnosticUnderlineInfo guisp=Cyan gui=undercurl
]])

-- Background for floating window
vim.cmd([[
  highlight NormalFloat guibg=#27231c " Set a solid background for floating windows
  highlight FloatBorder guibg=#27231c " Set the same background for borders (optional)
]])

-- Terminal
function _G.toggle_terminal()
    local term_buf = vim.fn.bufnr("term://*")
    if term_buf ~= -1 then
        if vim.fn.bufwinnr(term_buf) ~= -1 then
            vim.cmd("bd! " .. term_buf)
        else
            vim.cmd("botright split | resize 20 | term")
        end
    else
        vim.cmd("botright split | resize 20 | term")
    end
end

vim.api.nvim_set_keymap("n", "<C-t>", ":lua toggle_terminal()<CR>i", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-t>", "<C-\\><C-n>:lua toggle_terminal()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-w>", "<C-\\><C-n>:winc k<CR>", { noremap = true, silent = true })
