local M = {}

function M.obtener(colores)
	return {
		TelescopeTitle = { fg = colores.rojo, bg = colores.base },
		TelescopeBorder = { fg = colores.rojo },
	}
end

return M
