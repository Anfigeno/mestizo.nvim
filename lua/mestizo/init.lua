local M = {}

local colores = require("mestizo.paleta")
local util = require("mestizo.util")

M.claves = require("mestizo.claves.principal").crear(colores)

---@param claves table<string, string>
local function establecer_colores(claves)
	for clave, valor in pairs(claves) do
		vim.api.nvim_set_hl(0, clave, valor)
	end
end

local function agregar_claves_de_lsp()
	local integraciones_de_lsp = {
		"general",
		"go",
    "lua"
	}

	for _, integracion in ipairs(integraciones_de_lsp) do
		local claves_de_integracion = require("mestizo.claves.lsp." .. integracion).crear(colores)
		M.claves = util.combinar_diccionarios(M.claves, claves_de_integracion)
	end
end

local function agregar_integraciones()
	local integraciones = {
		"copilot-lua",
		"rainbow-delimiters",
		"noice",
		"notify",
		"lspkind",
		"cmp",
		"neotree",
		"telescope",
		"git-signs",
		"dashboard",
		"trouble",
		"treesitter-context",
		"avante",
		"navic",
		"which-key",
		"symbol-usage",
		"dap-ui",
		"edgy",
    "fyler"
	}

	for _, integracion in ipairs(integraciones) do
		local claves_de_integracion = require("mestizo.claves.integraciones." .. integracion).crear(colores)
		M.claves = util.combinar_diccionarios(M.claves, claves_de_integracion)
	end
end

M.establecer = function()
	agregar_claves_de_lsp()
	agregar_integraciones()

	vim.cmd.hi("clear")
	vim.g.colors_name = "mestizo"
	vim.o.termguicolors = true

	establecer_colores(M.claves)
end

return M
