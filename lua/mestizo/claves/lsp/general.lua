local M = {}

---@param colores Paleta
function M.crear(colores)
  return {
    ["@variable"] = { fg = colores.tope },
    ["@variable.parameter"] = { fg = colores.rosa, nocombine = true },
    ["@variable.builtin"] = { fg = colores.rojo },
    ["@function.call"] = { fg = colores.azul },
    ["@function.builtin"] = { fg = colores.azul },
    ["@function.method.call"] = { fg = colores.cian },
    ["@function.method"] = { fg = colores.cian },
    ["@property"] = { fg = colores.celeste, nocombine = true },
    ["@method"] = { fg = colores.cian },
    ["@punctuation.bracket"] = { fg = colores.rosa, bold = true },
    ["@tag"] = { fg = colores.rojo },
    ["@tag.attribute"] = { fg = colores.naranja },
    ["@tag.delimiter"] = { link = "Delimiter" },
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
