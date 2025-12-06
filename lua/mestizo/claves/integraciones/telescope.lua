local M = {}

---@param colores Paleta
---@return table
function M.crear(colores)
	return {
		TelescopeSelection = { bg = colores.base1 },
		TelescopeTitle = { fg = colores.base, bg = colores.rojo },
		TelescopeBorder = { fg = colores.base_1, bg = colores.base_1 },
		TelescopePromptBorder = {
			fg = colores.base1,
			bg = colores.base1,
		},
		TelescopePromptNormal = { bg = colores.base1 },
		TelescopeNormal = { bg = colores.base_1 },
		TelescopeMatching = { fg = colores.celeste },
		TelescopeMultiSelection = { fg = colores.tope_2 },
		TelescopePreviewNormal = { bg = colores.base2 },
		TelescopePreviewBorder = { fg = colores.base2, bg = colores.base2 },
	}
end

return M
