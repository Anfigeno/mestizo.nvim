local M = {}

---@param colores Colores
function M.obtener(colores)
	return {
		["@lsp.type.modifier.java"] = { link = "Keyword" },
		["@lsp.type.namespace.java"] = { fg = colores.tope },
	}
end

return M
