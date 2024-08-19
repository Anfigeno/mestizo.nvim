local util = require("mestizo.util")
local M = {}

---@param colores Colores
function M.obtener(colores)
	local mezcla = util.mezclar_colores(colores.base, colores.azul, 0.1)

	return {
		SymbolUsageRounding = { fg = mezcla },
		SymbolUsageContent = { fg = colores.viento, bg = mezcla },
		SymbolUsageImpl = { fg = colores.magenta, bg = mezcla },
		SymbolUsageDef = { fg = colores.cian, bg = mezcla },
		SymbolUsageRef = { fg = colores.azul, bg = mezcla },
	}
end

return M
