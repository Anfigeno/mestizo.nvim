local colores = require("mestizo.paleta")

local fondo_de_pestana_activa = colores.base2
local fondo_de_pestana_inactiva = colores.base

return {
	background = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	buffer_visible = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	buffer_selected = { fg = colores.tope, bg = fondo_de_pestana_activa, italic = false, bold = false },

	duplicate = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	duplicate_visible = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	duplicate_selected = { fg = colores.tope, bg = fondo_de_pestana_activa },

	tab = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	tab_selected = { fg = colores.tope, bg = fondo_de_pestana_activa },
	tab_separator = { fg = fondo_de_pestana_inactiva, bg = fondo_de_pestana_inactiva },
	tab_separator_selected = { fg = fondo_de_pestana_activa, bg = fondo_de_pestana_activa },

	tab_close = { fg = colores.tope2, bg = fondo_de_pestana_activa },
	indicator_visible = { fg = fondo_de_pestana_inactiva, bg = fondo_de_pestana_inactiva },
	indicator_selected = { fg = fondo_de_pestana_activa, bg = fondo_de_pestana_activa },

	separator = { fg = fondo_de_pestana_inactiva, bg = fondo_de_pestana_inactiva },
	separator_visible = { fg = fondo_de_pestana_inactiva, bg = fondo_de_pestana_inactiva },
	separator_selected = { fg = fondo_de_pestana_inactiva, bg = fondo_de_pestana_activa },
	offset_separator = { fg = fondo_de_pestana_inactiva, bg = fondo_de_pestana_inactiva },

	close_button = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	close_button_visible = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	close_button_selected = { fg = colores.tope1, bg = fondo_de_pestana_activa },

	fill = { bg = fondo_de_pestana_inactiva },

	numbers = { fg = colores.tope_2, bg = colores.base1 },
	numbers_visible = { fg = colores.tope_2, bg = colores.base1 },
	numbers_selected = { fg = colores.tope, bg = colores.base },

	error = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	error_visible = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	error_selected = { fg = colores.tope, bg = fondo_de_pestana_activa, bold = false, italic = false },
	error_diagnostic = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	error_diagnostic_visible = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	error_diagnostic_selected = { fg = colores.tope, bg = fondo_de_pestana_activa, bold = false, italic = false },

	warning = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	warning_visible = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	warning_selected = { fg = colores.tope, bg = fondo_de_pestana_activa, bold = false, italic = false },
	warning_diagnostic = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	warning_diagnostic_visible = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	warning_diagnostic_selected = { fg = colores.tope, bg = fondo_de_pestana_activa, bold = false, italic = false },

	info = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	info_visible = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	info_selected = { fg = colores.tope, bg = fondo_de_pestana_activa, bold = false, italic = false },
	info_diagnostic = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	info_diagnostic_visible = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	info_diagnostic_selected = { fg = colores.tope, bg = fondo_de_pestana_activa, bold = false, italic = false },

	hint = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	hint_visible = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	hint_selected = { fg = colores.tope, bg = fondo_de_pestana_activa, bold = false, italic = false },
	hint_diagnostic = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	hint_diagnostic_visible = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	hint_diagnostic_selected = { fg = colores.tope, bg = fondo_de_pestana_activa, bold = false, italic = false },

	diagnostic = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	diagnostic_visible = { fg = colores.tope_2, bg = fondo_de_pestana_inactiva },
	diagnostic_selected = { fg = colores.tope, bg = fondo_de_pestana_activa, bold = false, italic = false },

	modified = { fg = colores.naranja, bg = fondo_de_pestana_inactiva },
	modified_visible = { fg = colores.naranja, bg = fondo_de_pestana_inactiva },
	modified_selected = { fg = colores.naranja, bg = fondo_de_pestana_activa, bold = false, italic = false },
}
