local M = {}

function M.obtener(colores)
	return {
		GitSignsAdd = { fg = colores.verde, bold = true },
		GitSignsChange = { fg = colores.amarillo, bold = true },
		GitSignsDelete = { fg = colores.rojo, bold = true },
	}
end

return M
