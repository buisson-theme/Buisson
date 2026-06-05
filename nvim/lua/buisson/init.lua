-- lua/buisson/init.lua
local M = {}
local palette = require("buisson.palette")

M.setup = function(opts)
  opts = opts or {}
end

M.load = function()
  local variant = vim.o.background == "light" and "light" or "dark"
  local c = palette[variant]

  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") == 1 then vim.cmd("syntax reset") end
  vim.g.colors_name = "buisson"

  local hl = function(group, props)
    vim.api.nvim_set_hl(0, group, props)
  end

  -- ── Editor chrome ────────────────────────────────────────────
  hl("Normal",          { fg = c.fg0, bg = c.bg0 })
  hl("NormalFloat",     { fg = c.fg0, bg = c.bg0 })
  hl("NormalNC",        { fg = c.fg1, bg = c.bg0 })
  hl("ColorColumn",     { bg = c.bg2 })
  hl("Conceal",         { fg = c.fg3 })
  hl("Cursor",          { fg = c.bg0, bg = c.fg3 })
  hl("lCursor",         { fg = c.bg0, bg = c.fg3 })
  hl("CursorIM",        { fg = c.bg0, bg = c.fg3 })
  hl("CursorLine",      { bg = c.bg1 })
  hl("CursorLineNr",    { fg = c.fg2 })
  hl("LineNr",          { fg = c.fg3 })
  hl("SignColumn",      { fg = c.fg3, bg = c.bg0 })
  hl("FoldColumn",      { fg = c.fg3, bg = c.bg0 })
  hl("Folded",          { fg = c.fg2, bg = c.bg2 })
  hl("MatchParen",      { fg = c.ochre, bold = true })
  hl("NonText",         { fg = c.bg4 })
  hl("SpecialKey",      { fg = c.bg4 })
  hl("Whitespace",      { fg = c.bg3 })
  hl("EndOfBuffer",     { fg = c.bg3 })
  hl("WinSeparator",    { fg = c.bg4 })
  hl("VertSplit",       { fg = c.bg4 })

  -- ── Selection / Search ───────────────────────────────────────
  hl("Visual",          { bg = c.bg3 })
  hl("VisualNOS",       { bg = c.bg3 })
  hl("Search",          { fg = c.bg0, bg = c.ochre })
  hl("IncSearch",       { fg = c.bg0, bg = c.sage })
  hl("CurSearch",       { fg = c.bg0, bg = c.hibiscus })
  hl("Substitute",      { fg = c.bg0, bg = c.hibiscus })

  -- ── Statusline / Tabline ─────────────────────────────────────
  hl("StatusLine",      { fg = c.fg1, bg = c.bg0 })
  hl("StatusLineNC",    { fg = c.fg3, bg = c.bg0 })
  hl("WinBar",          { fg = c.fg2, bg = c.bg1 })
  hl("WinBarNC",        { fg = c.fg3, bg = c.bg0 })
  hl("TabLine",         { fg = c.fg3, bg = c.bg0 })
  hl("TabLineFill",     { bg = c.bg0 })
  hl("TabLineSel",      { fg = c.fg0, bg = c.bg1 })

  -- ── Popups ───────────────────────────────────────────────────
  hl("Pmenu",           { fg = c.fg1, bg = c.bg2 })
  hl("PmenuSel",        { fg = c.fg0, bg = c.bg3 })
  hl("PmenuSbar",       { bg = c.bg2 })
  hl("PmenuThumb",      { bg = c.bg4 })
  hl("FloatBorder",     { fg = c.bg4, bg = c.bg0 })
  hl("FloatTitle",      { fg = c.fg2, bg = c.bg0 })
  hl("WildMenu",        { fg = c.fg0, bg = c.bg3 })
  hl("QuickFixLine",    { bg = c.bg3 })

  -- ── Messages ─────────────────────────────────────────────────
  hl("ErrorMsg",        { fg = c.hibiscus })
  hl("WarningMsg",      { fg = c.ochre })
  hl("ModeMsg",         { fg = c.fg1 })
  hl("MoreMsg",         { fg = c.sage })
  hl("Question",        { fg = c.sage })

  -- ── Diagnostics ──────────────────────────────────────────────
  hl("DiagnosticError",           { fg = c.hibiscus })
  hl("DiagnosticWarn",            { fg = c.ochre })
  hl("DiagnosticInfo",            { fg = c.slate })
  hl("DiagnosticHint",            { fg = c.moss })
  hl("DiagnosticOk",              { fg = c.sage })
  hl("DiagnosticUnderlineError",  { undercurl = true, sp = c.hibiscus })
  hl("DiagnosticUnderlineWarn",   { undercurl = true, sp = c.ochre })
  hl("DiagnosticUnderlineInfo",   { undercurl = true, sp = c.slate })
  hl("DiagnosticUnderlineHint",   { undercurl = true, sp = c.moss })
  hl("DiagnosticVirtualTextError",{ fg = c.hibiscus, italic = true })
  hl("DiagnosticVirtualTextWarn", { fg = c.ochre,    italic = true })
  hl("DiagnosticVirtualTextInfo", { fg = c.slate,    italic = true })
  hl("DiagnosticVirtualTextHint", { fg = c.moss,     italic = true })

  -- ── Diff ─────────────────────────────────────────────────────
  hl("DiffAdd",         { fg = c.sage,     bg = c.bg2 })
  hl("DiffChange",      { fg = c.ochre,    bg = c.bg2 })
  hl("DiffDelete",      { fg = c.hibiscus, bg = c.bg2 })
  hl("DiffText",        { fg = c.slate,    bg = c.bg3 })
  hl("Added",           { fg = c.sage })
  hl("Changed",         { fg = c.ochre })
  hl("Removed",         { fg = c.hibiscus })

  -- ── Syntax ───────────────────────────────────────────────────
  hl("Comment",         { fg = c.fg2, italic = true })
  hl("Constant",        { fg = c.slate })
  hl("String",          { fg = c.ochre })
  hl("Character",       { fg = c.ochre })
  hl("Number",          { fg = c.slate })
  hl("Boolean",         { fg = c.hibiscus })
  hl("Float",           { fg = c.slate })
  hl("Identifier",      { fg = c.fg0 })
  hl("Function",        { fg = c.sage })
  hl("Statement",       { fg = c.hibiscus })
  hl("Keyword",         { fg = c.hibiscus })
  hl("Conditional",     { fg = c.hibiscus })
  hl("Repeat",          { fg = c.hibiscus })
  hl("Label",           { fg = c.hibiscus })
  hl("Operator",        { fg = c.thistle })
  hl("Exception",       { fg = c.hibiscus })
  hl("PreProc",         { fg = c.thistle })
  hl("Include",         { fg = c.hibiscus })
  hl("Define",          { fg = c.thistle })
  hl("Macro",           { fg = c.hibiscus })
  hl("PreCondit",       { fg = c.hibiscus })
  hl("Type",            { fg = c.moss })
  hl("StorageClass",    { fg = c.hibiscus })
  hl("Structure",       { fg = c.moss })
  hl("Typedef",         { fg = c.moss })
  hl("Special",         { fg = c.thistle })
  hl("SpecialChar",     { fg = c.ochre })
  hl("Tag",             { fg = c.moss })
  hl("Delimiter",       { fg = c.fg1 })
  hl("SpecialComment",  { fg = c.fg2, italic = true })
  hl("Debug",           { fg = c.hibiscus })
  hl("Underlined",      { underline = true })
  hl("Error",           { fg = c.hibiscus })
  hl("Todo",            { fg = c.bg1, bg = c.ochre, bold = true })

  -- ── Treesitter ───────────────────────────────────────────────
  local ts = {
    ["@comment"]                = { fg = c.fg2,      italic = true },
    ["@comment.documentation"]  = { fg = c.fg2,      italic = true },
    ["@keyword"]                = { fg = c.hibiscus },
    ["@keyword.import"]         = { fg = c.hibiscus },
    ["@keyword.return"]         = { fg = c.hibiscus },
    ["@keyword.conditional"]    = { fg = c.hibiscus },
    ["@keyword.repeat"]         = { fg = c.hibiscus },
    ["@keyword.operator"]       = { fg = c.hibiscus },
    ["@keyword.exception"]      = { fg = c.hibiscus },
    ["@keyword.coroutine"]      = { fg = c.hibiscus },
    ["@function"]               = { fg = c.sage },
    ["@function.call"]          = { fg = c.sage },
    ["@function.method"]        = { fg = c.sage },
    ["@function.method.call"]   = { fg = c.sage },
    ["@function.builtin"]       = { fg = c.hibiscus },
    ["@function.macro"]         = { fg = c.hibiscus },
    ["@constructor"]            = { fg = c.moss },
    ["@type"]                   = { fg = c.moss },
    ["@type.builtin"]           = { fg = c.moss },
    ["@type.definition"]        = { fg = c.moss },
    ["@type.qualifier"]         = { fg = c.hibiscus },
    ["@variable"]               = { fg = c.fg0 },
    ["@variable.builtin"]       = { fg = c.hibiscus },
    ["@variable.parameter"]     = { fg = c.fg0,  italic = true },
    ["@variable.member"]        = { fg = c.fg0 },
    ["@string"]                 = { fg = c.ochre },
    ["@string.escape"]          = { fg = c.thistle },
    ["@string.special"]         = { fg = c.thistle },
    ["@string.special.url"]     = { fg = c.slate, underline = true },
    ["@number"]                 = { fg = c.slate },
    ["@number.float"]           = { fg = c.slate },
    ["@boolean"]                = { fg = c.hibiscus },
    ["@constant"]               = { fg = c.fg0 },
    ["@constant.builtin"]       = { fg = c.hibiscus },
    ["@constant.macro"]         = { fg = c.hibiscus },
    ["@operator"]               = { fg = c.thistle },
    ["@punctuation"]            = { fg = c.fg1 },
    ["@punctuation.delimiter"]  = { fg = c.fg1 },
    ["@punctuation.bracket"]    = { fg = c.fg1 },
    ["@punctuation.special"]    = { fg = c.thistle },
    ["@attribute"]              = { fg = c.moss },
    ["@namespace"]              = { fg = c.moss },
    ["@module"]                 = { fg = c.moss },
    ["@module.builtin"]         = { fg = c.moss },
    ["@label"]                  = { fg = c.hibiscus },
    ["@tag"]                    = { fg = c.moss },
    ["@tag.attribute"]          = { fg = c.thistle },
    ["@tag.delimiter"]          = { fg = c.fg1 },
    ["@markup.heading"]         = { fg = c.sage, bold = true },
    ["@markup.heading.1"]       = { fg = c.sage, bold = true },
    ["@markup.heading.2"]       = { fg = c.ochre,    bold = true },
    ["@markup.heading.3"]       = { fg = c.sage,     bold = true },
    ["@markup.link"]            = { fg = c.slate,    underline = true },
    ["@markup.link.url"]        = { fg = c.slate,    underline = true },
    ["@markup.raw"]             = { fg = c.moss },
    ["@markup.raw.block"]       = { fg = c.moss },
    ["@markup.strong"]          = { fg = c.hibiscus, bold = true },
    ["@markup.italic"]          = { fg = c.ochre, italic = true },
    ["@markup.strikethrough"]   = { fg = c.fg2, strikethrough = true },
    ["@markup.quote"]           = { fg = c.ochre,    italic = true },
    ["@markup.list"]            = { fg = c.moss },
    ["@markup.list.checked"]    = { fg = c.sage },
    ["@markup.list.unchecked"]  = { fg = c.fg2 },
    ["@diff.plus"]              = { fg = c.sage },
    ["@diff.minus"]             = { fg = c.hibiscus },
    ["@diff.delta"]             = { fg = c.ochre },
  }
  for group, props in pairs(ts) do hl(group, props) end

  -- ── LSP ──────────────────────────────────────────────────────
  hl("LspReferenceText",              { bg = c.bg3 })
  hl("LspReferenceRead",              { bg = c.bg3 })
  hl("LspReferenceWrite",             { bg = c.bg3, underline = true })
  hl("LspSignatureActiveParameter",   { fg = c.ochre, bold = true })
  hl("LspInlayHint",                  { fg = c.fg3, italic = true })

  -- ── nvim-cmp ─────────────────────────────────────────────────
  hl("CmpItemAbbr",             { fg = c.fg1 })
  hl("CmpItemAbbrMatch",        { fg = c.sage, bold = true })
  hl("CmpItemAbbrMatchFuzzy",   { fg = c.sage })
  hl("CmpItemAbbrDeprecated",   { fg = c.fg3, strikethrough = true })
  hl("CmpItemKindFunction",     { fg = c.sage })
  hl("CmpItemKindMethod",       { fg = c.sage })
  hl("CmpItemKindClass",        { fg = c.moss })
  hl("CmpItemKindInterface",    { fg = c.moss })
  hl("CmpItemKindKeyword",      { fg = c.hibiscus })
  hl("CmpItemKindVariable",     { fg = c.fg0 })
  hl("CmpItemKindText",         { fg = c.fg1 })
  hl("CmpItemKindSnippet",      { fg = c.ochre })
  hl("CmpItemKindField",        { fg = c.fg0 })
  hl("CmpItemKindProperty",     { fg = c.fg0 })
  hl("CmpItemKindModule",       { fg = c.moss })
  hl("CmpItemMenu",             { fg = c.fg3 })

  -- ── Telescope ────────────────────────────────────────────────
  hl("TelescopeBorder",         { fg = c.bg4,        bg = c.bg0 })
  hl("TelescopePromptBorder",   { fg = c.sage,       bg = c.bg0 })
  hl("TelescopeResultsBorder",  { fg = c.bg4,        bg = c.bg0 })
  hl("TelescopePreviewBorder",  { fg = c.bg4,        bg = c.bg0 })
  hl("TelescopeNormal",         { fg = c.fg1,        bg = c.bg0 })
  hl("TelescopePromptNormal",   { fg = c.fg0,        bg = c.bg0 })
  hl("TelescopeSelection",      { fg = c.fg0,        bg = c.bg3 })
  hl("TelescopeSelectionCaret", { fg = c.hibiscus,   bg = c.bg3 })
  hl("TelescopeMatching",       { fg = c.sage,       bold = true })
  hl("TelescopeTitle",          { fg = c.fg2 })

  -- ── Gitsigns ─────────────────────────────────────────────────
  hl("GitSignsAdd",     { fg = c.sage })
  hl("GitSignsChange",  { fg = c.ochre })
  hl("GitSignsDelete",  { fg = c.hibiscus })

  -- ── Lazy.nvim ────────────────────────────────────────────────
  hl("LazyH1",            { fg = c.hibiscus, bold = true })
  hl("LazyProgressDone",  { fg = c.sage })
  hl("LazyProgressTodo",  { fg = c.bg4 })
  hl("LazyButton",        { fg = c.fg1, bg = c.bg2 })
  hl("LazyButtonActive",  { fg = c.fg0, bg = c.bg3 })

  -- ── Which-key ────────────────────────────────────────────────
  hl("WhichKey",          { fg = c.sage })
  hl("WhichKeyGroup",     { fg = c.moss })
  hl("WhichKeyDesc",      { fg = c.fg1 })
  hl("WhichKeySeparator", { fg = c.bg4 })
  hl("WhichKeyFloat",     { bg = c.bg0 })

  -- ── Mini.nvim statusline ──────────────────────────────────────
  hl("MiniStatuslineModeNormal",  { fg = c.bg0, bg = c.sage,     bold = true })
  hl("MiniStatuslineModeInsert",  { fg = c.bg0, bg = c.moss,     bold = true })
  hl("MiniStatuslineModeVisual",  { fg = c.bg0, bg = c.thistle,  bold = true })
  hl("MiniStatuslineModeCommand", { fg = c.bg0, bg = c.ochre,    bold = true })
  hl("MiniStatuslineModeOther",   { fg = c.bg0, bg = c.slate,    bold = true })
  hl("MiniStatuslineFilename",    { fg = c.fg1, bg = c.bg2 })
  hl("MiniStatuslineFileinfo",    { fg = c.fg2, bg = c.bg2 })
  hl("MiniStatuslineInactive",    { fg = c.fg3, bg = c.bg0 })

  -- ── Indent-blankline ─────────────────────────────────────────
  hl("IblIndent",   { fg = c.bg3 })
  hl("IblScope",    { fg = c.bg4 })
  hl("IndentBlanklineChar",       { fg = c.bg3 })
  hl("IndentBlanklineContextChar",{ fg = c.bg4 })
end

return M
