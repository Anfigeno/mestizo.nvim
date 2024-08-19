local M = {}

---@param colores Colores
function M.obtener(colores)
	local grupos = {}

	for i = 1, 6, 1 do
		grupos["@markup.heading." .. i .. ".html"] = {
			fg = colores.tope,
		}
	end

	return grupos
end

return M
