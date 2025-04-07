function _G.toggle_terminal()
	local term_buf = vim.fn.bufnr("term://*")
	if term_buf ~= -1 then
		if vim.fn.bufwinnr(term_buf) ~= -1 then
			vim.cmd("bd! " .. term_buf)
		else
			vim.cmd("botright split | resize 13 | term")
		end
	else
		vim.cmd("botright split | resize 13 | term")
	end
end
