local util = require("mestizo.util")
local M = {}

---@param colores Colores
function M.obtener(colores)
	local grupos = {
		MarkviewListItemMinus = { link = "@markup.list.markdown" },
		MarkviewInlineCode = { link = "@markup.raw.markdown_inline" },
		MarkviewCode = { link = "@markup.raw.block.markdown" },
	}

	local factorDeMezcla = { 0, 0.2, 0.4, 0.8, 1.0, 1.2 }
	for i = 1, 6, 1 do
		local mezcla = util.mezclar_colores(colores.magenta, colores.azul, factorDeMezcla[i])

		grupos["MarkviewHeading" .. i] = {
			fg = mezcla,
			bg = util.mezclar_colores(colores.base, mezcla, 0.1),
		}
	end

	return grupos
end

return M
