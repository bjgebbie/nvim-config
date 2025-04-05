return {
	"neovim/nvim-lspconfig",
	keys = {
		{ "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", desc = "Display LSP Code Actions" },
		{ "<leader>ce", ":lua vim.diagnostic.open_float()<CR>", desc = "Display LSP Code Errors" },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local standard_setup = {
			capabilities,
			vim.diagnostic.config({
				virtual_text = true,
				underline = true,
			}),
		}

		-- Terraform
		lspconfig.terraformls.setup({ standard_setup })
		-- lspconfig.bashls.setup({ standard_setup })
		-- Lua
		lspconfig.lua_ls.setup({ standard_setup })
		-- Clang
		lspconfig.clangd.setup({ standard_setup })
		-- NodeJS/TS
		lspconfig.ts_ls.setup({ standard_setup })
		lspconfig.eslint.setup({ standard_setup })
	end,
}
