local M = {}

function M.obtener(colores)
	return {
		NeoTreeNormal = { fg = colores.tope, bg = colores.base },
		NeoTreeNormalNC = { fg = colores.tope, bg = colores.base },
		NeoTreeDirectoryIcon = { fg = colores.rosa, bg = colores.base },
		NeoTreeDirectoryName = { fg = colores.rosa, bg = colores.base },
		NeoTreeRootName = { fg = colores.rosa, bg = colores.base },
		NeoTreeFloatTitle = { fg = colores.rojo },
		NeoTreeGitUntracked = { fg = colores.lima },
	}
end

return M
