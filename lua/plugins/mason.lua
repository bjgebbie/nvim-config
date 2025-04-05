return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"eslint",
					"ts_ls",
					"terraformls",
				},
			})
		end,
	},
	{
		-- Items that are found in :Mason Linters or formatters
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		},
		config = function()
			require("mason-null-ls").setup({
				--  ensure_installed = {
				--        "stylua",
				--         "tflint",
				--   "prettier",
				--},

				automatic_installation = true,
			})
		end,
	},
}
