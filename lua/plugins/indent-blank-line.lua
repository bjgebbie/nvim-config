return {
	"lukas-reineke/indent-blankline.nvim",
	config = function()
		local highlight = {
			"RainbowRed",
		}

		local hooks = require("ibl.hooks")
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#D8CAAC" })
		end)

		require("ibl").setup({ indent = { highlight = highlight } })
	end,

	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {},
}
