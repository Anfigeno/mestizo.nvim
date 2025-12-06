return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async" },
	config = function()
		vim.o.foldlevel = 99
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true

		local ufo = require("ufo")

		ufo.setup({
			provider_selector = function(bufnr, filetype, buftype)
				return { "treesitter", "indent" }
			end,
		})

		vim.keymap.set("n", "zR", ufo.openAllFolds, { desc = "Abre todos los plieges" })
		vim.keymap.set("n", "zM", ufo.closeAllFolds, { desc = "Cierra todos los plieges" })
	end,
}
