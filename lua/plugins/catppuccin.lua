return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
			color_overrides = {
				all = {
					base = "#32352A",
					mantle = "#27231c",
					crust = "#27231c",
				},
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
