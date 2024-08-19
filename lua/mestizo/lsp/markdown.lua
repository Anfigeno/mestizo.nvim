local util = require("mestizo.util")
local M = {}

---@param colores Colores
function M.obtener(colores)
	local grupos = {
		["@markup.heading.gitcommit"] = { fg = colores.azul },
		["@markup.list.markdown"] = { fg = colores.rojo },
		["@markup.bold"] = { bold = true },
		["@markup.italic"] = { italic = true },
		["@markup.link.label"] = { fg = colores.cian },
		["@markup.link.url"] = { fg = colores.azul, underline = true, italic = true },
		["@markup.strong"] = { bold = true },
		["@markup.italic.markdown_inline"] = { italic = true, fg = colores.celeste },
		["@markup.strong.markdown_inline"] = { bold = true, fg = colores.lima },
		["@markup.raw.block.markdown"] = { bg = colores.sombra },
		["@markup.raw.markdown_inline"] = { fg = colores.amarillo, bg = colores.humo },
		["@markup.quote.markdown"] = { fg = colores.luz },
		["@markup.list.checked.markdown"] = { fg = colores.verde },
		["@markup.list.unchecked.markdown"] = { fg = colores.rojo },
	}

	local factorDeMezcla = { 0, 0.2, 0.4, 0.8, 1.0, 1.2 }
	for i = 1, 6, 1 do
		local mezcla = util.mezclar_colores(colores.magenta, colores.azul, factorDeMezcla[i])

		grupos["@markup.heading." .. i .. ".markdown"] = {
			fg = mezcla,
			bg = util.mezclar_colores(colores.base, mezcla, 0.1),
		}
	end

	return grupos
end

return M
