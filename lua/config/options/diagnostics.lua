return {
	setup = function()
		vim.cmd([[
            highlight DiagnosticUnderlineError guisp=Red gui=undercurl
            highlight DiagnosticUnderlineWarn guisp=Yellow gui=undercurl
            highlight DiagnosticUnderlineHint guisp=Blue gui=undercurl
            highlight DiagnosticUnderlineInfo guisp=Cyan gui=undercurl
        ]])

		vim.cmd([[
            highlight NormalFloat guibg=#27231c " Set a solid background for floating windows
            highlight FloatBorder guibg=#27231c " Set the same background for borders (optional)
        ]])
	end,
}
