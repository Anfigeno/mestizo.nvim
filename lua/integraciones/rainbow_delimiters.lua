local M = {}

function M.obtener(colores)
	return {
		RainbowDelimiterRed = { fg = colores.rojo },
		RainbowDelimiterGreen = { fg = colores.verde },
		RainbowDelimiterYellow = { fg = colores.amarillo },
		RainbowDelimiterBlue = { fg = colores.azul },
		RainbowDelimiterViolet = { fg = colores.magenta },
		RainbowDelimiterCyan = { fg = colores.cian },

		RainbowDelimiterOrange = { fg = colores.naranja },
	}
end

return M
