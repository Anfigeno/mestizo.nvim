local util = require("mestizo.util")
local M = {}

---@param fondo_de_pestanas string|nil
---@param fondo_de_paginas string|nil
---@return table
M.obtener = function(fondo_de_pestanas, fondo_de_paginas)
	local colores = require("mestizo.colores")

	fondo_de_pestanas = colores[fondo_de_pestanas] or colores.rojo
	fondo_de_paginas = colores[fondo_de_paginas] or colores.azul

	local fondo_inactivo_de_pestanas = util.mezclar_colores(fondo_de_pestanas, colores.base, 0.5)
	local fondo_inactivo_de_paginas = util.mezclar_colores(fondo_de_paginas, colores.base, 0.5)

	local grupos = {
		background = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		buffer_visible = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		buffer_selected = { fg = colores.sombra, bg = fondo_de_pestanas, italic = false },

		duplicate_selected = { fg = colores.sombra, bg = fondo_de_pestanas },
		duplicate_visible = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		duplicate = { fg = colores.base, bg = fondo_inactivo_de_pestanas },

		tab = { fg = colores.base, bg = fondo_inactivo_de_paginas },
		tab_selected = { fg = colores.sombra, bg = fondo_de_paginas },
		tab_separator = { fg = colores.base, bg = fondo_inactivo_de_paginas },
		tab_separator_selected = { fg = colores.base, bg = fondo_de_paginas },

		tab_close = { fg = fondo_de_paginas, bg = colores.base },
		indicator_visible = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		indicator_selected = { fg = colores.base, bg = fondo_de_pestanas },

		separator = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		separator_visible = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		separator_selected = { fg = colores.base, bg = fondo_de_pestanas },
		offset_separator = { fg = colores.base, bg = fondo_de_pestanas },

		close_button = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		close_button_visible = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		close_button_selected = { fg = colores.vacio, bg = fondo_de_pestanas },

		fill = { bg = colores.base },

		numbers = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		numbers_visible = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		numbers_selected = { fg = colores.sombra, bg = fondo_de_pestanas },

		error = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		error_visible = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		error_selected = { fg = colores.sombra, bg = fondo_de_pestanas },
		error_diagnostic = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		error_diagnostic_visible = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		error_diagnostic_selected = { fg = colores.sombra, bg = fondo_de_pestanas },

		warning = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		warning_visible = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		warning_selected = { fg = colores.sombra, bg = fondo_de_pestanas },
		warning_diagnostic = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		warning_diagnostic_visible = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		warning_diagnostic_selected = { fg = colores.sombra, bg = fondo_de_pestanas },

		info = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		info_visible = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		info_selected = { fg = colores.sombra, bg = fondo_de_pestanas },
		info_diagnostic = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		info_diagnostic_visible = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		info_diagnostic_selected = { fg = colores.sombra, bg = fondo_de_pestanas },

		hint = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		hint_visible = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		hint_selected = { fg = colores.sombra, bg = fondo_de_pestanas },
		hint_diagnostic = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		hint_diagnostic_visible = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		hint_diagnostic_selected = { fg = colores.sombra, bg = fondo_de_pestanas },

		diagnostic = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		diagnostic_visible = { fg = colores.base, bg = fondo_inactivo_de_pestanas },
		diagnostic_selected = { fg = colores.sombra, bg = fondo_de_pestanas },

		modified = { fg = colores.naranja, bg = fondo_inactivo_de_pestanas },
		modified_visible = { fg = colores.naranja, bg = fondo_inactivo_de_pestanas },
		modified_selected = { fg = colores.naranja, bg = fondo_de_pestanas },
	}

	return grupos
end

return M
