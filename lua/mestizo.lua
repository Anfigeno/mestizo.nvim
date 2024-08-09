local M = {}

---@type Colores
local colores = {
	rojo = "#ff5263",
	verde = "#8eeda1",
	amarillo = "#ffe780",
	azul = "#8B93FF",
	magenta = "#e882ff",
	cian = "#6ae4fc",

	rosa = "#ff7d81",
	lima = "#bfed8e",
	naranja = "#fc9b74",
	celeste = "#8bb6ff",
	fucsia = "#e4adff",
	turquesa = "#6ac6fc",

	luz = "#edeff8",
	tope = "#bbc3e8",
	reflejo = "#9ca8da",

	viento = "#818bb3",
	nube = "#6f779e",
	vapor = "#565c81",
	contaminacion = "#434865",
	humo = "#292c3d",

	base = "#1e1f2a",
	sombra = "#191b24",
	vacio = "#111218",
}

M.grupos = {
	CodeBlock = { bg = colores.sombra },
	Winbar = { fg = colores.sombra, bg = colores.base },
	WinbarNC = { fg = colores.sombra, bg = colores.base },
	EndOfBuffer = { fg = colores.base },
	Boolean = { fg = colores.naranja },
	NormalFloat = { bg = colores.base },
	DiagnosticUnderlineError = { sp = colores.rojo, underline = true },
	DiagnosticError = {
		fg = colores.rojo,
		italic = true,
		bold = true,
	},
	DiagnosticWarn = {
		fg = colores.amarillo,
		italic = true,
		bold = true,
	},
	DiagnosticUnderlineWarn = { sp = colores.amarillo, underline = true },
	DiagnosticHint = {
		fg = colores.cian,
		italic = true,
		bold = true,
	},
	DiagnosticUnderlineHint = { sp = colores.cian, underline = true },
	DiagnosticInfo = {
		fg = colores.verde,
		italic = true,
		bold = true,
	},
	DiagnosticUnderlineInfo = { sp = colores.verde, underline = true },
	String = { fg = colores.verde },
	Delimiter = { fg = colores.nube },
	Keyword = { fg = colores.magenta, italic = true },
	Identifier = { fg = colores.tope, bold = true },
	Function = { fg = colores.azul, nocombine = true },
	Conceal = { fg = colores.tope },
	Comment = { fg = colores.viento, italic = true, bold = true },
	Constant = { fg = colores.naranja },
	Cursor = { fg = colores.vacio, bg = colores.azul },
	CursorColumn = { fg = colores.tope, bg = colores.humo },
	CursorLine = { bg = colores.humo },
	ColorColumn = { bg = colores.humo },
	CursorLineNr = { fg = colores.celeste },
	DiffAdd = { fg = colores.verde, bg = colores.vacio },
	DiffChange = { fg = colores.tope, bg = colores.vacio },
	DiffDelete = { fg = colores.azul, bg = colores.vacio },
	DiffText = { fg = colores.amarillo, bg = colores.vacio },
	Directory = { fg = colores.rosa },
	Error = { fg = colores.rojo, bg = colores.base },
	ErrorMsg = { fg = colores.rojo, bg = colores.base },
	FoldColumn = { fg = colores.rojo, bg = colores.base },
	Folded = { fg = colores.tope, bg = colores.sombra },
	IncSearch = { fg = colores.tope, bg = colores.viento },
	LineNr = { fg = colores.contaminacion },
	MatchParen = { fg = colores.tope, bg = colores.nube },
	ModeMsg = { fg = colores.tope },
	MoreMsg = { fg = colores.tope },
	NonText = { fg = colores.nube },
	Normal = { fg = colores.tope, bg = colores.base, bold = false },
	Operator = { fg = colores.rojo },
	PmenuSbar = { fg = colores.tope, bg = colores.vacio },
	PmenuThumb = { bg = colores.azul },
	PmenuSel = { bg = colores.base, fg = "NONE" },
	Pmenu = { fg = colores.viento, bg = colores.sombra },
	PreProc = { fg = colores.verde },
	Question = { fg = colores.tope },
	Search = { fg = colores.luz, bg = colores.nube },
	SignColumn = { bg = colores.base },
	Special = { fg = colores.amarillo },
	SpecialKey = { fg = colores.azul },
	SpellBad = { sp = colores.rojo, undercurl = true },
	SpellCap = { fg = colores.rojo, bg = colores.vacio },
	SpellRare = { fg = colores.cian, bg = colores.amarillo },
	SpellLocal = { fg = colores.azul, bg = colores.tope },
	Statement = { fg = colores.cian },
	StatusLine = { fg = colores.sombra },
	StatusLineNC = { fg = colores.sombra },
	TabLine = { fg = colores.tope, bg = colores.magenta },
	TabLineFill = { fg = colores.vacio, bg = colores.tope },
	TabLineSel = { fg = colores.tope },
	Title = { fg = colores.rojo },
	Todo = { fg = colores.cian, bg = colores.vacio },
	Type = { fg = colores.amarillo },
	Underlined = { fg = colores.azul },
	Visual = { fg = colores.tope, bg = colores.contaminacion },
	VisualNOS = { fg = colores.tope, bg = colores.rosa },
	WarningMSG = { fg = colores.rojo },
	WildMenu = { fg = colores.vacio, bg = colores.amarillo },
	WinSeparator = { fg = colores.sombra, bg = colores.base },
	FloatBorder = { fg = colores.rojo, bg = colores.base, nocombine = true },
	FloatTitle = { fg = colores.rojo, bg = colores.base },
}

M.agregar = function(diccionario)
	for clave, valor in pairs(diccionario) do
		M.grupos[clave] = valor
	end
end

M.agregar_integraciones = function(integraciones)
	for _, valor in ipairs(integraciones) do
		M.agregar(require("integraciones." .. valor).obtener(colores))
	end
end

M.agregar_lsp = function()
	local lsps = {
		"general",
		"markdown",
		"java",
		"http",
	}

	for _, valor in ipairs(lsps) do
		M.agregar(require("lsp." .. valor).obtener(colores))
	end
end

M.establecer_extras = function(extras)
	for _, valor in ipairs(extras) do
		require("extras." .. valor).establecer()
	end
end

M.integraciones = {
	"bufferline",
	"cmp",
	"dashboard",
	"gitsigns",
	"navbuddy",
	"neo_tree",
	"noice",
	"notify",
	"rainbow_delimiters",
	"telescope",
	"trouble",
	"web_devicons",
	"edgy",
	"diffview",
	"lspkind",
	"outline",
	"markview",
}

M.extras = {
	"barra_minimalista",
}

M.establecer = function(configuracion)
	configuracion = configuracion or {}
	configuracion.integraciones = configuracion.integraciones or {}
	configuracion.extras = configuracion.extras or {}

	M.agregar_lsp()

	if #configuracion.integraciones > 0 then
		M.agregar_integraciones(configuracion.integraciones)
	end

	if #configuracion.extras > 0 then
		M.establecer_extras(configuracion.extras)
	end

	vim.cmd.hi("clear")
	vim.g.colors_name = "mestizo"
	vim.o.termguicolors = true

	for group, opts in pairs(M.grupos) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

M.paleta = function()
	return colores
end

return M
