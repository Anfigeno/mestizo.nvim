local M = {}

---@param colores Colores
function M.obtener(colores)
	return {
		["@variable"] = { link = "Identifier" },
		["@variable.parameter"] = { fg = colores.rosa },
		["@variable.builtin"] = { fg = colores.rojo },
		["@function.call"] = { link = "Function" },
		["@function.method.call"] = { link = "Function" },
		["@function.method"] = { link = "Function" },
		["@property"] = { fg = colores.celeste, nocombine = true },
		["@method"] = { fg = colores.azul },
		["@punctuation.bracket"] = { fg = colores.rosa, bold = true },
		["@tag"] = { fg = colores.rojo },
		["@tag.attribute"] = { fg = colores.naranja },
		["@tag.delimiter"] = { fg = colores.nube },
		["@keyword.export"] = { fg = colores.cian },
		["@string.escape"] = { fg = colores.fucsia, italic = true },
		["@string"] = { fg = colores.verde, italic = true },
		["@parameter"] = { fg = colores.rojo },
		["@lsp.type.selfKeyword"] = { fg = colores.rojo },
		["@lsp.type.interface"] = { fg = colores.fucsia },
		["@constructor"] = { fg = colores.lima },
	}
end

return M
