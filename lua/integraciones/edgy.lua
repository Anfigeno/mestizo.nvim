local M = {}

---@param colores Colores
function M.obtener(colores)
	return {
		EdgyTitle = { fg = colores.verde },
	}
end

return M
