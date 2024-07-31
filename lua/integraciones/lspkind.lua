local M = {}

local colores_y_claves = {
	luz = {
		"Event",
		"Color",
	},
	verde = {
		"Text",
	},
	rojo = {
		"Operator",
		"Parameter",
	},
	azul = {
		"Function",
	},
	naranja = {
		"Constant",
		"File",
		"EnumMember",
	},
	celeste = {
		"Property",
		"Supermaven",
		"Field",
	},
	cian = {
		"Method",
		"Codeium",
		"Value",
	},
	magenta = {
		"Keyword",
		"Module",
		"Unit",
		"Snippet",
	},
	amarillo = {
		"Class",
		"Enum",
		"Reference",
	},
	lima = {
		"Constructor",
	},
	fucsia = {
		"Interface",
		"Struct",
	},
	rosa = {
		"Folder",
		"Variable",
	},
}

---@param colores Colores
function M.obtener(colores)
	local grupos = {}

	for color, clave in pairs(colores_y_claves) do
		for _, hl in ipairs(clave) do
			grupos["CmpItemKind" .. hl] = { fg = colores.base, bg = colores[color] }
		end
	end

	return grupos
end

return M
