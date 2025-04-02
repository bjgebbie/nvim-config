return {
	"neovim/nvim-lspconfig",
	keys = {
		{ "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", desc = "Display LSP Code Actions" },
		{ "<leader>ce", ":lua vim.diagnostic.open_float()<CR>", desc = "Display LSP Code Errors" },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		--   local function setup_lsp_diags()
		--      vim.lsp.handlers["textDocument/publishDiagnostics"] =
		--        vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
		--          virtual_text = false,
		--        signs = true,
		--      update_in_insert = false,
		--    underline = true,
		--})
		--end
		lspconfig.ts_ls.setup({
			capabilities,
			setup_lsp_diags,
		})
		lspconfig.lua_ls.setup({
			capabilities,
		})
		lspconfig.clangd.setup({
			capabilities,
		})
	end,
}
