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
	},
	magenta = {
		"Module",
		"Keyword",
	},
	rojo = {
		"Operator",
	},
	rosa = {
		"Variable",
	},
	azul = {
		"Function",
	},
	verde = {
		"Text",
	},
	celeste = {
		"Field",
		"Property",
	},
	naranja = {
		"Constant",
		"File",
		"EnumMember",
	},
	cian = {
		"Method",
		"Value",
	},
	fucsia = {
		"Interface",
	},
	lima = {
		"Constructor",
	},
}

---@param colores Colores
function M.obtener(colores)
	local grupos = {}

	for color, clave in pairs(colores_y_claves) do
		for _, hl in ipairs(clave) do
			grupos["NavBuddy" .. hl] = { fg = colores[color], bg = "NONE" }
		end
	end

	return grupos
end
return M
