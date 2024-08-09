local M = {}

function M.obtener(colores)
	return {
		NoiceCmdlinePopupBorder = { fg = colores.rojo },
		NoiceCmdlinePopupTitle = { fg = colores.rojo, bg = colores.base },
		NoiceCmdlinePopupBorderSearch = { fg = colores.amarillo },
		NoicePopup = { bg = colores.base },
	}
end

return M
