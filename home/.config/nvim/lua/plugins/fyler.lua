return {
	"A7Lavinraj/fyler.nvim",
	dependencies = {
		{
			"nvim-mini/mini.icons",
			config = function()
				local mini_icons = require("mini.icons")

				mini_icons.setup()
				mini_icons.mock_nvim_web_devicons()
			end,
		},
	},
	branch = "stable",
	lazy = false,
	opts = {},
	keys = {
		{
			"<C-n>",
			":Fyler kind=split_left<cr>",
			desc = "TAmare",
		},
	},
}
