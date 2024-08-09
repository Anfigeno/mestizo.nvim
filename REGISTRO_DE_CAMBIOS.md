# Registro de cambios

## [1.4] 09/08/2024

### Integraciones

- Agregado: markview.nvim y outline.nvim.
- Modificado:
  - trouble.nvim:
    - Claves agregadas: TroubleIconField, TroubleIconDirectory y TroubleCount.

### Lsp's

Se han separado las claves de los lenguajes especificos en modulos.

- Agregado: general, HTTP, Java y Markdown.

### Grupos de colores

- Modificado:
  - DiagnosticError, DiagnosticHint, DiagnosticWarn, DiagnosticInfo: Se ha eliminado el fondo.
  - Directory: fg = colores.azul -> colores.rojo.
  - Title: fg = colores.tope -> colores.rojo.
- Eliminado: Todas las claves de LSP.

## [1.3] - 31/07/2024

### Integraciones

- Agregado: edgy.nvim y lspkind.nvim.

## [1.2] - 19/06/2024

### Paleta de colores

- Agregado:
  - vapor.
- Modificado:
  - luz: "#d7ddfe" -> "#edeff8".
  - tope: "#bcc3e8" -> "#bbc3e8".
  - reflejo: "#9ca8dd" -> "#9ba8da".
  - viento: "#888daa" -> "#818bb3".
  - nube: "#494d69" -> "#6f779e".
  - contaminacion: "#34374b" -> "#434865".
  - humo: "#2a2c3c" -> "#292c3d".
  - base: "#222430" -> "#1e1f2a".

### Integraciones

- Agregado: diffview.nvim

### Grupos de colores

- Agregado:
  - "@lsp.type.modifier.java"
  - "@lsp.type.namespace.java"
  - Scss
  - Sass
  - EdgyIcon
  - EdgyIconActive
  - BufferLineTabClose
  - BufferLineTabSeparator
  - BufferLineTabSeparatorSelected
- Modificado:
  - DiagnosticError, DiagnosticWarn, DiagnosticInfo, DiagnosticHint: Usamos una función para mezclar los coloes.
  - Delimiter: fg = colores.viento -> colores.nube.
  - Constant: fg = colores.lima -> colores.naranja.
  - LineNr: fg = colores.nube -> colores.contaminacion.
  - EdgyTitle: fg = colores.verde -> colores.rojo.

### Módulos

- Agregado:
  - util

## [1.1] - 25-05-2024

### Integraciones

- edgy.nvim

### Grupos de colores

- Agregado:
  - Winbar
  - WinbarNC
  - CmpItemKindSuperMaven
- Modificado:
  - FoldColumn: fg = colores.azul, bg = colores.magenta -> fg = colores.rojo, bg = colores.base.
  - Folded: fg = colores.azul, bg = colores.magenta -> fg = colores.tope, bg = colores.sombra.
  - NeoTreeDirectoryIcon: Quitamos el bg.
  - NeoTreeDirectoryName: Quitamos el bg.

## [1.0] - 20-05-2024

- Realización inicial.
