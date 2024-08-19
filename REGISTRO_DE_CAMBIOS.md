# Registro de cambios

## [1.6] 19/08/2024

### Archivos

- `lua/mestizo/`:
  - `init.lua`:
    - Agregado:
      - Función local `establecer_integraciones_extra`
    - Modificado:
      - Método `agregar` -> `agregar_claves`.
      - Método `agregar_lsp` -> función local `agregar_claves_de_lsp`.
      - Método `establecer_extras` -> función local.
      - Método `agregar_integraciones` -> función local `establecer_integraciones`.
    - Eliminado:
      - Variable `colores`.
      - Propiedades `integraciones`, `extras`.
  - `types.lua`:
    - Agregado:
      - Clases: `Configuracion`, `Integraciones`, `IntegracionesExtra` y `Extras`.

### Integraciones

- Agregado: nvim-navic y symbol-usage.nvim.
- Modificado:
  - bufferline: Se ha movido de `lua/mestizo/integraciones` a `lua/mestizo/integraciones/especial` y se ha modificado para que funcione con la opcion `highlights` de bufferline.

### Integraciones especiales

- Agregado:
  - bufferline-iconos: Permite cambiar el color principal y de fondo de los iconos de bufferline.

### Lsp's

- Agregado: HTML.
- Modificado:
  - Markdown: La asignación de colores automática solo afecta a los archivos markdown.

## [1.5] 09/08/2024

### Estructura de archivos

Se ha movido el contenido de la carpeta `lua/` hacia la carpeta `lua/mestizo/`.

### Integraciones

- Agregado:
  - nvim-neo-tree.nvim:
    - Claves: NeoTreeGitConflict y NeoTreeIndentMarker.

## [1.4] 09/08/2024

### Integraciones

- Agregado:
  - markview.nvim.
  - outline.nvim.
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
