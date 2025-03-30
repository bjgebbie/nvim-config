return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpate",
	config = function()
		local config = require('nvim-treesitter.configs')
		config.setup ({
			highlight = { enable = true },
			indent = { enable = true },
            auto_install = true,
		})
	end
}
