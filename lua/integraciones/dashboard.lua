local M = {}

function M.obtener(colores)
	return {
		DashboardShortCut = { fg = colores.rosa },
		DashboardHeader = { fg = colores.rojo },
		DashboardCenter = { fg = colores.verde },
		DashboardFooter = { fg = colores.rosa, bold = true },
		DashboardMruTitle = { fg = colores.naranja },
		DashboardProjectTitle = { fg = colores.naranja },
		DashboardFiles = { fg = colores.celeste },
		DashboardKey = { fg = colores.naranja },
		DashboardDesc = { fg = colores.lima },
		DashboardIcon = { fg = colores.rosa, bold = true },
	}
end

return M
