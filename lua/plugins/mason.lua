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
			local mason_lspconfig = require("mason-lspconfig")
			mason_lspconfig.setup({
				automatic_installation = true,
			})
			mason_lspconfig.setup_handlers({
				function()
					local lspconfig = require("lspconfig")
					local capabilities = require("cmp_nvim_lsp").default_capabilities()

					local standard_setup = {
						capabilities,
						vim.diagnostic.config({
							virtual_text = true,
							underline = true,
						}),
					}

					lspconfig.terraformls.setup({ standard_setup })
					lspconfig.dockerls.setup({ standard_setup })
					lspconfig.lua_ls.setup({ standard_setup })
					lspconfig.clangd.setup({ standard_setup })
					lspconfig.eslint.setup({ standard_setup })
					lspconfig.bashls.setup({ standard_setup })
					lspconfig.ts_ls.setup({ standard_setup })
				end,
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
				automatic_installation = true,
			})
		end,
	},
}
