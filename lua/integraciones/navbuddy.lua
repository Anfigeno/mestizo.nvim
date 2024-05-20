local M = {}

function M.obtener(colores)
	return {
		NavBuddyNormalFloat = { fg = colores.tope, bg = colores.base },

		NavBuddyField = { fg = colores.rojo },
		NavBuddyProperty = { fg = colores.rojo },
		NavBuddyEvent = { fg = colores.rojo },

		NavBuddyText = { fg = colores.verde },
		NavBuddyEnum = { fg = colores.verde },
		NavBuddyKeyword = { fg = colores.verde },

		NavBuddyConstant = { fg = colores.amarillo },
		NavBuddyConstructor = { fg = colores.amarillo },
		NavBuddyReference = { fg = colores.amarillo },

		NavBuddyFunction = { fg = colores.azul, bg = "NONE", bold = true },
		NavBuddyClass = { fg = colores.azul, bg = "NONE", bold = true },
		NavBuddyModule = { fg = colores.azul, bg = "NONE", bold = true },
		NavBuddyOperator = { fg = colores.azul, bg = "NONE", bold = true },

		NavBuddyVariable = { fg = colores.naranja },
		NavBuddyFile = { fg = colores.naranja },

		NavBuddyMethod = { fg = colores.cian },
		NavBuddyValue = { fg = colores.cian },
		NavBuddyEnumMember = { fg = colores.cian },

		NavBuddyInterface = { fg = colores.fucsia },
	}
end

return M
