local M = {}

---@param colores Colores
function M.obtener(colores)
	return {
		OutlineGuides = { fg = colores.vapor },
		OutlineFoldMarker = { fg = colores.contaminacion },
	}
end

return M
