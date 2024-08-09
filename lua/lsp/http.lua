local M = {}

---@param colores Colores
function M.obtener(colores)
	return {
		["@function.method.http"] = { link = "keyword" },
		["@string.special.url.http"] = { link = "string" },
	}
end

return M
