local M = {}

function M.obtener(colores)
	return {
		NotifyERRORBorder = { fg = colores.rojo },
		NotifyERRORIcon = { fg = colores.rojo },
		NotifyERRORTitle = { fg = colores.rojo, italic = true },
		NotifyWARNBorder = { fg = colores.amarillo },
		NotifyWARNIcon = { fg = colores.amarillo },
		NotifyWARNTitle = { fg = colores.amarillo, italic = true },
		NotifyINFOBorder = { fg = colores.azul },
		NotifyINFOIcon = { fg = colores.azul },
		NotifyINFOTitle = { fg = colores.azul, italic = true },
		NotifyDEBUGBorder = { fg = colores.naranja },
		NotifyDEBUGIcon = { fg = colores.naranja },
		NotifyDEBUGTitle = { fg = colores.naranja, italic = true },
		NotifyTRACEBorder = { fg = colores.rosa },
		NotifyTRACEIcon = { fg = colores.rosa },
		NotifyTRACETitle = { fg = colores.rosa, italic = true },
	}
end

return M
