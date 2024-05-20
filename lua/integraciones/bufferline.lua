local M = {}

function M.obtener(colores)
	return {
		BufferlineWarning = { fg = colores.amarillo, bg = colores.base },
		BufferlineWarningSelected = { fg = colores.amarillo, bg = colores.base },
		BufferlineWarningVisible = { fg = colores.amarillo, bg = colores.base },
		BufferlineWarningDiagnostic = { fg = colores.amarillo, bg = colores.base },
		BufferlineWarningDiagnosticSelected = { fg = colores.amarillo, bg = colores.base },
		BufferlineWarningDiagnosticVisible = { fg = colores.amarillo, bg = colores.base },

		BufferlineError = { fg = colores.rojo, bg = colores.base },
		BufferlineErrorSelected = { fg = colores.rojo, bg = colores.base },
		BufferlineErrorVisible = { fg = colores.rojo, bg = colores.base },
		BufferlineErrorDiagnostic = { fg = colores.rojo, bg = colores.base },
		BufferlineErrorDiagnosticSelected = { fg = colores.rojo, bg = colores.base },
		BufferlineErrorDiagnosticVisible = { fg = colores.rojo, bg = colores.base },

		BufferlineInfo = { fg = colores.cian, bg = colores.base },
		BufferlineInfoSelected = { fg = colores.cian, bg = colores.base },
		BufferlineInfoVisible = { fg = colores.cian, bg = colores.base },
		BufferlineInfoDiagnostic = { fg = colores.cian, bg = colores.base },
		BufferlineInfoDiagnosticSelected = { fg = colores.cian, bg = colores.base },
		BufferlineInfoDiagnosticVisible = { fg = colores.cian, bg = colores.base },

		BufferlineHint = { fg = colores.cian, bg = colores.base },
		BufferlineHintSelected = { fg = colores.cian, bg = colores.base },
		BufferlineHintVisible = { fg = colores.cian, bg = colores.base },
		BufferlineHintDiagnostic = { fg = colores.cian, bg = colores.base },
		BufferlineHintDiagnosticSelected = { fg = colores.cian, bg = colores.base },
		BufferlineHintDiagnosticVisible = { fg = colores.cian, bg = colores.base },

		BufferlineSeparator = { fg = colores.base, bg = colores.base },
		BufferlineSeparatorVisible = { fg = colores.base, bg = colores.base },
		BufferlineSeparatorSelected = { fg = colores.base, bg = colores.base },

		BufferlineIndicatorVisible = { fg = colores.base },
		BufferlineIndicatorSelected = { fg = colores.rojo },

		BufferlineBackground = { fg = colores.nube, bg = colores.base },
		BufferlineBuffer = { fg = colores.nube, bg = colores.base },
		BufferlineBufferVisible = { fg = colores.nube, bg = colores.base },
		BufferlineBufferSelected = { fg = colores.tope, bg = colores.base },

		BufferlineTab = { fg = colores.nube, bg = colores.base },
		BufferlineTabSelected = { fg = colores.tope, bg = colores.base },

		BufferlineCloseButton = { fg = colores.nube, bg = colores.base },
		BufferlineCloseButtonVisible = { fg = colores.rojo, bg = colores.base },
		BufferlineCloseButtonSelected = { fg = colores.rojo, bg = colores.base },

		BufferlineFill = { bg = colores.base },
		BufferlineNumbers = { bg = colores.base },
		BufferlineGroupSeparator = { bg = colores.base },
		BufferlineDuplicate = { fg = colores.nube, bg = colores.base },
	}
end

return M
