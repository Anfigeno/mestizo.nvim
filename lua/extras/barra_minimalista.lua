local M = {}

M.establecer = function()
	local str = string.rep("─", vim.api.nvim_win_get_width(0))
	vim.opt.statusline = str
	vim.opt.laststatus = 0
end

return M
