local atlantic_dark = {}

local p = {
  black        = "#121212",
  dark_grey    = "#1c1c1c",
  light_grey   = "#737874",
  white        = "#e4e4e4",
  light_green  = "#00af5f",
  medium_green = "#00875f",
  dark_green   = "#005f5f",
  blue         = "#0087ff",
  gold         = "#ffd787",
  red          = "#ff005f",
}

atlantic_dark.groups = {
  -- basics
  Conceal = { fg = p.white, },
  Comment = { fg = p.light_grey, },
  Constant = { fg = p.blue, },
  Cursor = { fg = p.black, bg = p.blue },
  CursorColumn = { fg = p.white, bg = p.dark_grey },
  CursorLine = { bg = p.dark_grey, },
  ColorColumn = { bg = p.dark_grey },
  CursorLineNr = { fg = p.blue, bold = true },
  DiffAdd = { fg = p.medium_green, bg = p.black },
  DiffChange = { fg = p.white, bg = p.black },
  DiffDelete = { fg = p.blue, bg = p.black },
  DiffText = { fg = p.gold, bg = p.black },
  Directory = { fg = p.blue, },
  Error = { fg = p.red, bg = p.black },
  ErrorMsg = { fg = p.black, bg = p.red },
  FloatBorder = { fg = p.dark_green },
  FoldColumn = { fg = p.blue, bg = p.dark_grey },
  Folded = { fg = p.blue, bg = p.dark_grey },
  Identifier = { fg = p.white, },
  IncSearch = { fg = p.white, bg = p.dark_green },
  LineNr = { fg = p.dark_green, },
  MatchParen = { fg = p.white, bg = p.dark_green },
  ModeMsg = { fg = p.white, },
  MoreMsg = { fg = p.white, },
  NonText = { fg = p.white, },
  Normal = { fg = p.white, bg = p.black },
  Operator = { fg = p.light_green, bold = true },
  Pmenu = { fg = p.white, bg = p.dark_grey },
  PmenuSbar = { fg = p.white, bg = p.dark_grey },
  PmenuSel = { fg = p.white, bg = p.medium_green },
  PmenuThumb = { fg = p.dark_grey, bg = p.dark_green },
  PreProc = { fg = p.medium_green, },
  Question = { fg = p.white, },
  Search = { fg = p.white, bg = p.dark_green },
  SignColumn = { bg = p.black },
  Special = { fg = p.gold, },
  SpecialKey = { fg = p.blue, },
  SpellBad = { sp = p.red, undercurl = true },
  SpellCap = { fg = p.red, bg = p.black },
  SpellRare = { fg = p.light_green, bg = p.gold },
  SpellLocal = { fg = p.blue, bg = p.white },
  Statement = { fg = p.light_green, },
  StatusLine = { fg = p.white, bg = p.dark_grey },
  StatusLineNC = { fg = p.dark_grey, bg = p.white },
  TabLine = { fg = p.white, bg = p.dark_grey },
  TabLineFill = { fg = p.black, bg = p.white },
  TabLineSel = { fg = p.white, },
  Title = { fg = p.white, },
  Todo = { fg = p.light_green, bg = p.black },
  Type = { fg = p.light_green, },
  Underlined = { fg = p.blue, },
  Visual = { fg = p.white, bg = p.dark_green },
  VisualNOS = { fg = p.white, bg = p.dark_green },
  WarningMSG = { fg = p.red, },
  WildMenu = { fg = p.black, bg = p.gold },
  WinSeparator = { fg = p.dark_green },

  -- PLUGINS

  -- Gitsigns
  GitSignsAdd = { fg = p.medium_green, bold = true },
  GitSignsChange = { fg = p.gold, bold = true },
  GitSignsDelete = { fg = p.red, bold = true },

  -- IndentBlankline
  IblIndent = { fg = p.dark_grey },

  -- LSP

  ["@function.call"] = { fg = p.light_green },
  ["@function.method.call"] = { fg = p.light_green },
  ["@markup.bold"] = { bold = true },
  ["@markup.heading"] = { fg = p.blue, bold = true },
  ["@markup.italic"] = { italic = true },
  ["@markup.link.label"] = { fg = p.light_green },
  ["@markup.link.url"] = { fg = p.blue, underline = true, italic = true },
  ["@markup.strong"] = { bold = true },
  ["@punctuation.bracket"] = { fg = p.dark_green, bold = true },
  ["@tag"] = { fg = p.light_green },
  ["@tag.attribute"] = { fg = p.gold },
  ["@tag.delimiter"] = { fg = p.light_green },

}


-- reset colors and load highlights
atlantic_dark.setup = function()
  vim.cmd.hi("clear")
  vim.g.colors_name = "atlantic-dark"
  vim.o.termguicolors = true
  for group, opts in pairs(atlantic_dark.groups) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return atlantic_dark
