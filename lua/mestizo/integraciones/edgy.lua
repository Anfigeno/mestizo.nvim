local M = {}

---@param colores Colores
function M.obtener(colores)
	return {
		EdgyTitle = { fg = colores.rojo },
		EdgyIcon = { fg = colores.rojo },
		EdgyIconActive = { fg = colores.rojo },
	}
end

return M
