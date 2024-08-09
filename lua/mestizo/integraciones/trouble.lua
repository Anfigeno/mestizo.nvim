local M = {}

function M.obtener(colores)
	return {
		TroubleError = { fg = colores.rojo },
		TroubleWarning = { fg = colores.amarillo },
		TroubleInformation = { fg = colores.azul },
		TroubleHint = { fg = colores.verde },
		TroubleTextError = { fg = colores.rojo },
		TroubleTextWarning = { fg = colores.amarillo },
		TroubleTextInformation = { fg = colores.azul },
		TroubleTextHint = { fg = colores.verde },
		TroubleNormal = { fg = colores.tope, bg = colores.base },
		TroubleIconDirectory = { fg = colores.rosa },
		TroubleIconField = { fg = colores.celeste },
		TroubleCount = { bg = colores.humo },
	}
end

return M
