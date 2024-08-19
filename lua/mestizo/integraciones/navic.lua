local M = {}

local colores_y_claves = {
	luz = {
		"NormalFloat",
		"Event",
	},
	amarillo = {
		"Class",
		"Enum",
		"Reference",
		"Namespace",
		"Object",
		"TypeParameter",
	},
	magenta = {
		"Module",
		"Keyword",
		"Package",
	},
	rojo = {
		"Operator",
	},
	rosa = {
		"Variable",
		"Boolean",
		"Array",
	},
	azul = {
		"Function",
	},
	verde = {
		"String",
	},
	celeste = {
		"Field",
		"Property",
		"Key",
	},
	naranja = {
		"Constant",
		"File",
		"EnumMember",
		"Number",
		"Null",
	},
	cian = {
		"Method",
		"Value",
	},
	fucsia = {
		"Interface",
		"Struct",
	},
	lima = {
		"Constructor",
	},
}

---@param colores Colores
---@return table
M.obtener = function(colores)
	local grupos = {
		NavicSeparator = { fg = colores.tope },
		NavicText = { fg = colores.tope },
	}

	for color, grupo in pairs(colores_y_claves) do
		for _, clave in ipairs(grupo) do
			grupos["NavicIcons" .. clave] = { fg = colores.base, bg = colores[color] }
		end
	end

	return grupos
end

return M
