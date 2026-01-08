local M = {}

---@param colores Paleta
function M.crear(colores)
	return {
		FylerFSDirectoryName = { link = "Directory" },
		FylerConfirmRed = { fg = colores.rojo },
		FylerIndentMarker = { fg = colores.base2 },
		FylerGitAdded = { fg = colores.lima },
		FylerGitStaged = { fg = colores.verde },
		FylerGitUntracked = { fg = colores.lima },
		FylerGitDeleted = { fg = colores.rojo },
		FylerGitModified = { fg = colores.amarillo },
		FylerGitRenamed = { fg = colores.naranja },
		FylerGitUnstaged = { fg = colores.amarillo },
		FylerGitIgnored = { fg = colores.tope_2 },
		FylerGitConflict = { fg = colores.magenta },
		FylerBorder = { fg = colores.base2 },
	}
end

return M
