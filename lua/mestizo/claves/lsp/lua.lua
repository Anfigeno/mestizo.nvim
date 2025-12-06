local M = {}

---@param colores Paleta
function M.crear(colores)
	return {
		["@lsp.type.variable.lua"] = { fg = "NONE" },
	}
end

return M
