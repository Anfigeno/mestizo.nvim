local M = {}

local colores = require("mestizo.colores")

M.grupos = {
	CodeBlock = { bg = colores.sombra },
	Winbar = { fg = colores.tope, bg = colores.base },
	WinbarNC = { fg = colores.tope, bg = colores.base },
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

M.agregar_claves = function(diccionario)
	for clave, valor in pairs(diccionario) do
		M.grupos[clave] = valor
	end
end

local function agregar_claves_de_lsp()
	local lsps = {
		"general",
		"markdown",
		"java",
		"http",
		"html",
	}

	for _, valor in ipairs(lsps) do
		M.agregar_claves(require("mestizo.lsp." .. valor).obtener(colores))
	end
end

---@param extras Extras
local function establecer_extras(extras)
	for clave, _ in pairs(extras) do
		require("mestizo.extras." .. clave).establecer()
	end
end

---@param integraciones Integraciones
local function establecer_integraciones(integraciones)
	if integraciones.todas then
		integraciones = {
			cmp = true,
			edgy = true,
			navic = true,
			noice = true,
			notify = true,
			lspkind = true,
			outline = true,
			trouble = true,
			diffview = true,
			gitsigns = true,
			markview = true,
			navbuddy = true,
			neo_tree = true,
			dashboard = true,
			telescope = true,
			symbol_usage = true,
			web_devicons = true,
			rainbow_delimiters = true,
		}
	end

	for clave, _ in pairs(integraciones) do
		local integracion = require("mestizo.integraciones." .. clave).obtener(colores)
		M.agregar_claves(integracion)
	end
end

---@param integraciones_extra IntegracionesExtra
local function establecer_integraciones_extra(integraciones_extra)
	---@param clave string
	---@param parametros ...
	for clave, parametros in pairs(integraciones_extra) do
		local integracion = require("mestizo.integraciones.extra." .. clave).obtener(colores, parametros)
		M.agregar_claves(integracion)
	end
end

---@param configuracion Configuracion
M.establecer = function(configuracion)
	configuracion = configuracion or {}
	configuracion.integraciones = configuracion.integraciones or {}
	configuracion.integraciones_extra = configuracion.integraciones_extra or {}
	configuracion.extras = configuracion.extras or {}

	agregar_claves_de_lsp()

	establecer_integraciones(configuracion.integraciones)
	establecer_integraciones_extra(configuracion.integraciones_extra)
	establecer_extras(configuracion.extras)

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
