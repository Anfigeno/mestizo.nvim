local M = {}

function M.obtener(colores)
	return {
		CmpDocumentation = { bg = colores.sombra },

		CmpItemAbbrDeprecated = { fg = colores.nube, bg = "NONE", strikethrough = true },
		CmpItemAbbrMatch = { fg = colores.rojo, bg = "NONE", bold = true },
		CmpItemAbbrMatchFuzzy = { fg = colores.rojo, bg = "NONE", bold = true },
		CmpItemMenu = { fg = colores.rojo, bg = "NONE", italic = true },
	}
end

return M
