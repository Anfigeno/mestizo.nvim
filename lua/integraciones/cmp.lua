local M = {}

function M.obtener(colores)
	return {
		CmpItemAbbrDeprecated = { fg = colores.nube, bg = "NONE", strikethrough = true },
		CmpItemAbbrMatch = { fg = colores.rojo, bg = "NONE", bold = true },
		CmpItemAbbrMatchFuzzy = { fg = colores.rojo, bg = "NONE", bold = true },
		CmpItemMenu = { fg = colores.rojo, bg = "NONE", italic = true },

		CmpItemKindField = { fg = colores.vacio, bg = colores.rojo },
		CmpItemKindProperty = { fg = colores.vacio, bg = colores.rojo },
		CmpItemKindEvent = { fg = colores.vacio, bg = colores.rojo },

		CmpItemKindText = { fg = colores.vacio, bg = colores.verde },
		CmpItemKindEnum = { fg = colores.vacio, bg = colores.verde },
		CmpItemKindKeyword = { fg = colores.vacio, bg = colores.verde },

		CmpItemKindConstant = { fg = colores.vacio, bg = colores.amarillo },
		CmpItemKindConstructor = { fg = colores.vacio, bg = colores.amarillo },
		CmpItemKindReference = { fg = colores.vacio, bg = colores.amarillo },

		CmpItemKindFunction = { fg = colores.vacio, bg = colores.azul },
		CmpItemKindStruct = { fg = colores.vacio, bg = colores.azul },
		CmpItemKindClass = { fg = colores.vacio, bg = colores.azul },
		CmpItemKindModule = { fg = colores.vacio, bg = colores.azul },
		CmpItemKindOperator = { fg = colores.vacio, bg = colores.azul },

		CmpItemKindVariable = { fg = colores.vacio, bg = colores.naranja },
		CmpItemKindFile = { fg = colores.vacio, bg = colores.naranja },

		CmpItemKindUnit = { fg = colores.vacio, bg = colores.magenta },
		CmpItemKindSnippet = { fg = colores.vacio, bg = colores.magenta },
		CmpItemKindFolder = { fg = colores.vacio, bg = colores.magenta },
		CmpItemKindSupermaven = { fg = colores.vacio, bg = colores.magenta },

		CmpItemKindMethod = { fg = colores.vacio, bg = colores.cian },
		CmpItemKindValue = { fg = colores.vacio, bg = colores.cian },
		CmpItemKindEnumMember = { fg = colores.vacio, bg = colores.cian },

		CmpItemKindInterface = { fg = colores.vacio, bg = colores.fucsia },
		CmpItemKindColor = { fg = colores.vacio, bg = colores.fucsia },
		CmpItemKindTypeParameter = { fg = colores.vacio, bg = colores.fucsia },

		CmpItemKindCodeium = { fg = colores.vacio, bg = colores.fucsia },
	}
end

return M
