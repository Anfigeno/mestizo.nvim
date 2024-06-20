local util = require("util")

local M = {}

---@param colores Colores
function M.obtener(colores)
	return {
		DiffAdd = { bg = util.mezclar_colores(colores.base, colores.verde, 0.1) },
		DiffChange = { bg = util.mezclar_colores(colores.base, colores.amarillo, 0.1) },
		DiffText = { bg = util.mezclar_colores(colores.base, colores.tope, 0.1) },
		DiffDelete = { bg = util.mezclar_colores(colores.base, colores.rojo, 0.1) },
		DiffviewFolderName = { fg = colores.rosa },
		DiffViewFolderSign = { fg = colores.rosa },
		DiffviewFilePanelTitle = { fg = colores.rosa },
		DiffViewFilePanelFileName = { fg = colores.tope },
	}
end

return M
