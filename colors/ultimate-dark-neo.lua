-- Ultimate Dark Neo - Neovim colorscheme
-- Ported from Zed theme by Rune B
-- Place this file at: ~/.config/nvim/colors/ultimate-dark-neo.lua
-- Then activate with: :colorscheme ultimate-dark-neo

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "ultimate-dark-neo"
vim.o.background = "dark"
vim.o.termguicolors = true

local hl = vim.api.nvim_set_hl

-- ─── Palette ──────────────────────────────────────────────────────────────────
-- Transparent hex values from Zed have been pre-blended against the nearest
-- background colour so every entry below is a fully-opaque 24-bit colour.

local c = {
  -- Backgrounds
  bg        = "#33363a", -- editor.background
  bg_dark   = "#2d3134", -- elevated_surface / panel
  bg_active = "#373d43", -- editor.active_line (#3d485199 blended onto bg)
  bg_sel    = "#41454a", -- visual selection  (#6f757f3d blended onto bg)
  bg_match  = "#373d43", -- search match bg   (same as active line)
  bg_doc_hl = "#363b3f", -- document highlight read (#f5f6f810 blended)
  bg_indent = "#383e45", -- indent guide      (#3d485175 blended onto bg)
  border    = "#3d4851", -- border / active indent guide

  -- Foregrounds
  fg        = "#f5f6f8", -- editor.foreground
  fg_dim    = "#d8dde5", -- variable
  fg_muted  = "#8f97a8", -- comment / inactive line number (approx #f5f6f850)
  fg_lnum   = "#707276", -- line number (inactive)
  fg_lnum_a = "#b4b6b9", -- line number (active, #f5f6f8aa blended)

  -- Syntax
  red       = "#e4797e", -- boolean, constructor, tag
  red_dark  = "#bf616a", -- error, deleted, unreachable
  green     = "#9eca99", -- string, success, created
  yellow    = "#ecc285", -- number, type, warning, modified
  blue      = "#7faad5", -- info, link
  cyan      = "#7ec2c2", -- function
  purple    = "#c396c3", -- keyword, constant, attribute
  orange    = "#f19776", -- operator
  white     = "#ffffff", -- property, punctuation, variable.special
  magenta   = "#b48ead", -- conflict

  -- Diagnostics / git
  hint      = "#969696",
  predictive= "#afb7c8",

  -- ANSI terminal palette (used for terminal buffers)
  t_black         = "#3d4851",
  t_red           = "#bf616a",
  t_green         = "#9eca99",
  t_yellow        = "#ecc285",
  t_blue          = "#7faad5",
  t_magenta       = "#b48ead",
  t_cyan          = "#7ec2c2",
  t_white         = "#e5e9f0",
  t_br_black      = "#4c566a",
  t_br_red        = "#bf616a",
  t_br_green      = "#9eca99",
  t_br_yellow     = "#ecc285",
  t_br_blue       = "#7faad5",
  t_br_magenta    = "#b48ead",
  t_br_cyan       = "#8fbcbb",
  t_br_white      = "#eceff4",
}

-- ─── Editor UI ────────────────────────────────────────────────────────────────
hl(0, "Normal",          { bg = c.bg,      fg = c.fg })
hl(0, "NormalNC",        { bg = c.bg,      fg = c.fg })
hl(0, "NormalFloat",     { bg = c.bg_dark, fg = c.fg })
hl(0, "FloatBorder",     { bg = c.bg_dark, fg = c.border })
hl(0, "FloatTitle",      { bg = c.bg_dark, fg = c.fg, bold = true })

hl(0, "ColorColumn",     { bg = c.bg_active })
hl(0, "CursorLine",      { bg = c.bg_active })
hl(0, "CursorColumn",    { bg = c.bg_active })
hl(0, "CursorLineFold",  { link = "CursorLine" })
hl(0, "CursorLineSign",  { link = "CursorLine" })

hl(0, "LineNr",          { fg = c.fg_lnum })
hl(0, "LineNrAbove",     { fg = c.fg_lnum })
hl(0, "LineNrBelow",     { fg = c.fg_lnum })
hl(0, "CursorLineNr",    { fg = c.fg_lnum_a, bold = true })
hl(0, "SignColumn",      { bg = c.bg })
hl(0, "FoldColumn",      { bg = c.bg, fg = c.border })
hl(0, "Folded",          { bg = c.bg_active, fg = c.fg_muted })

hl(0, "Visual",          { bg = c.bg_sel })
hl(0, "VisualNOS",       { bg = c.bg_sel })

hl(0, "Search",          { bg = c.bg_match, fg = c.fg, bold = true })
hl(0, "IncSearch",       { bg = c.yellow,   fg = c.bg_dark, bold = true })
hl(0, "CurSearch",       { link = "IncSearch" })
hl(0, "Substitute",      { bg = c.red,      fg = c.bg_dark })

hl(0, "MatchParen",      { bg = c.border,   fg = c.fg, bold = true })

hl(0, "NonText",         { fg = c.border })
hl(0, "Whitespace",      { fg = c.border })
hl(0, "SpecialKey",      { fg = c.border })
hl(0, "EndOfBuffer",     { fg = c.bg })

hl(0, "WinSeparator",    { fg = c.border, bg = c.bg })
hl(0, "VertSplit",        { link = "WinSeparator" })

-- ─── Status / Tab line ────────────────────────────────────────────────────────
hl(0, "StatusLine",      { bg = c.bg,      fg = c.fg })
hl(0, "StatusLineNC",    { bg = c.bg_dark, fg = c.fg_muted })
hl(0, "TabLine",         { bg = c.bg,      fg = c.fg_muted })
hl(0, "TabLineFill",     { bg = c.bg })
hl(0, "TabLineSel",      { bg = c.border,  fg = c.fg, bold = true })

-- ─── Popup / Completion menu ──────────────────────────────────────────────────
hl(0, "Pmenu",           { bg = c.bg_dark, fg = c.fg })
hl(0, "PmenuSel",        { bg = c.border,  fg = c.fg, bold = true })
hl(0, "PmenuSbar",       { bg = c.bg_dark })
hl(0, "PmenuThumb",      { bg = c.border })
hl(0, "PmenuKind",       { bg = c.bg_dark, fg = c.cyan })
hl(0, "PmenuKindSel",    { bg = c.border,  fg = c.cyan })
hl(0, "PmenuExtra",      { bg = c.bg_dark, fg = c.fg_muted })
hl(0, "PmenuExtraSel",   { bg = c.border,  fg = c.fg_muted })
hl(0, "WildMenu",        { bg = c.border,  fg = c.fg })

-- ─── Messages / Command line ──────────────────────────────────────────────────
hl(0, "ModeMsg",         { fg = c.green,  bold = true })
hl(0, "MsgArea",         { fg = c.fg })
hl(0, "MoreMsg",         { fg = c.green })
hl(0, "WarningMsg",      { fg = c.yellow })
hl(0, "ErrorMsg",        { fg = c.red_dark })
hl(0, "Question",        { fg = c.blue })

-- ─── Spelling ─────────────────────────────────────────────────────────────────
hl(0, "SpellBad",        { undercurl = true, sp = c.red_dark })
hl(0, "SpellCap",        { undercurl = true, sp = c.yellow })
hl(0, "SpellLocal",      { undercurl = true, sp = c.blue })
hl(0, "SpellRare",       { undercurl = true, sp = c.magenta })

-- ─── Diff ─────────────────────────────────────────────────────────────────────
hl(0, "DiffAdd",         { bg = "#1e3a2b", fg = c.green })
hl(0, "DiffChange",      { bg = "#2e2d1e", fg = c.yellow })
hl(0, "DiffDelete",      { bg = "#3a1e1e", fg = c.red_dark })
hl(0, "DiffText",        { bg = "#3a341a", fg = c.yellow, bold = true })

-- ─── Quick fix / Location list ────────────────────────────────────────────────
hl(0, "QuickFixLine",    { bg = c.bg_active, bold = true })
hl(0, "qfLineNr",        { fg = c.blue })
hl(0, "qfFileName",      { fg = c.cyan })

-- ─── Standard syntax groups ───────────────────────────────────────────────────
hl(0, "Comment",         { fg = c.fg_muted, italic = true })

hl(0, "Constant",        { fg = c.purple, italic = true })
hl(0, "String",          { fg = c.green })
hl(0, "Character",       { fg = c.green })
hl(0, "Number",          { fg = c.yellow })
hl(0, "Float",           { fg = c.yellow })
hl(0, "Boolean",         { fg = c.red, italic = true })

hl(0, "Identifier",      { fg = c.fg_dim })
hl(0, "Function",        { fg = c.cyan })

hl(0, "Statement",       { fg = c.purple, italic = true })
hl(0, "Conditional",     { fg = c.purple, italic = true })
hl(0, "Repeat",          { fg = c.purple, italic = true })
hl(0, "Label",           { fg = c.fg })
hl(0, "Operator",        { fg = c.orange })
hl(0, "Keyword",         { fg = c.purple, italic = true })
hl(0, "Exception",       { fg = c.purple, italic = true })

hl(0, "PreProc",         { fg = c.fg })
hl(0, "Include",         { fg = c.purple, italic = true })
hl(0, "Define",          { fg = c.purple, italic = true })
hl(0, "Macro",           { fg = c.purple, italic = true })
hl(0, "PreCondit",       { fg = c.purple, italic = true })

hl(0, "Type",            { fg = c.yellow })
hl(0, "StorageClass",    { fg = c.purple, italic = true })
hl(0, "Structure",       { fg = c.yellow })
hl(0, "Typedef",         { fg = c.yellow })

hl(0, "Special",         { fg = c.orange })
hl(0, "SpecialChar",     { fg = c.purple })
hl(0, "Tag",             { fg = c.red })
hl(0, "Delimiter",       { fg = c.white })
hl(0, "SpecialComment",  { fg = c.fg_muted, italic = true })
hl(0, "Debug",           { fg = c.red })

hl(0, "Underlined",      { fg = c.blue, underline = true })
hl(0, "Ignore",          { fg = c.fg_muted })
hl(0, "Error",           { fg = c.red_dark })
hl(0, "Todo",            { fg = c.yellow, bold = true })

-- ─── Treesitter (nvim-treesitter / built-in) ──────────────────────────────────

-- Comments
hl(0, "@comment",                    { fg = c.fg_muted, italic = true })
hl(0, "@comment.documentation",      { fg = c.fg_muted, italic = true })

-- Literals
hl(0, "@string",                     { fg = c.green })
hl(0, "@string.escape",              { fg = c.purple })
hl(0, "@string.regexp",              { fg = c.green })
hl(0, "@string.special",             { fg = c.green })
hl(0, "@string.special.symbol",      { fg = c.green })
hl(0, "@string.special.url",         { fg = c.blue, underline = true })
hl(0, "@number",                     { fg = c.yellow })
hl(0, "@number.float",               { fg = c.yellow })
hl(0, "@boolean",                    { fg = c.red, italic = true })

-- Keywords
hl(0, "@keyword",                    { fg = c.purple, italic = true })
hl(0, "@keyword.function",           { fg = c.purple, italic = true })
hl(0, "@keyword.operator",           { fg = c.orange })
hl(0, "@keyword.return",             { fg = c.purple, italic = true })
hl(0, "@keyword.import",             { fg = c.purple, italic = true })
hl(0, "@keyword.conditional",        { fg = c.purple, italic = true })
hl(0, "@keyword.repeat",             { fg = c.purple, italic = true })
hl(0, "@keyword.exception",          { fg = c.purple, italic = true })
hl(0, "@keyword.coroutine",          { fg = c.purple, italic = true })

-- Functions
hl(0, "@function",                   { fg = c.cyan })
hl(0, "@function.call",              { fg = c.cyan })
hl(0, "@function.builtin",           { fg = c.cyan })
hl(0, "@function.method",            { fg = c.cyan })
hl(0, "@function.method.call",       { fg = c.cyan })
hl(0, "@constructor",                { fg = c.red })

-- Variables / parameters
hl(0, "@variable",                   { fg = c.fg_dim })
hl(0, "@variable.builtin",           { fg = c.white })
hl(0, "@variable.parameter",         { fg = c.fg_dim })
hl(0, "@variable.member",            { fg = c.white })  -- struct field / property

-- Types
hl(0, "@type",                       { fg = c.yellow })
hl(0, "@type.builtin",               { fg = c.yellow })
hl(0, "@type.qualifier",             { fg = c.purple, italic = true })
hl(0, "@type.definition",            { fg = c.yellow })

-- Constants
hl(0, "@constant",                   { fg = c.purple, italic = true })
hl(0, "@constant.builtin",           { fg = c.purple, italic = true })
hl(0, "@constant.macro",             { fg = c.purple, italic = true })

-- Attributes / labels
hl(0, "@attribute",                  { fg = c.purple, italic = true })
hl(0, "@label",                      { fg = c.fg })

-- Operators / punctuation
hl(0, "@operator",                   { fg = c.orange })
hl(0, "@punctuation",                { fg = c.white })
hl(0, "@punctuation.bracket",        { fg = c.white })
hl(0, "@punctuation.delimiter",      { fg = c.white })
hl(0, "@punctuation.special",        { fg = c.white })

-- Markup / markdown
hl(0, "@markup.raw",                 { fg = c.green })
hl(0, "@markup.link",                { fg = c.blue })
hl(0, "@markup.link.url",            { fg = c.blue, underline = true })
hl(0, "@markup.link.label",          { fg = c.blue })
hl(0, "@markup.heading",             { fg = c.green, bold = true })
hl(0, "@markup.strong",              { fg = c.fg, bold = true })
hl(0, "@markup.italic",              { fg = c.fg, italic = true })
hl(0, "@markup.strikethrough",       { fg = c.fg_muted, strikethrough = true })
hl(0, "@markup.list",                { fg = c.white })
hl(0, "@markup.list.checked",        { fg = c.green })
hl(0, "@markup.list.unchecked",      { fg = c.fg_muted })

-- Tags (HTML/JSX)
hl(0, "@tag",                        { fg = c.red })
hl(0, "@tag.builtin",                { fg = c.red })
hl(0, "@tag.attribute",              { fg = c.purple, italic = true })
hl(0, "@tag.delimiter",              { fg = c.white })

-- Namespace / module
hl(0, "@module",                     { fg = c.fg_dim })
hl(0, "@module.builtin",             { fg = c.white })

-- Misc
hl(0, "@preproc",                    { fg = c.fg })
hl(0, "@define",                     { fg = c.purple, italic = true })
hl(0, "@character",                  { fg = c.green })
hl(0, "@character.special",          { fg = c.purple })
hl(0, "@diff.plus",                  { fg = c.green })
hl(0, "@diff.minus",                 { fg = c.red_dark })
hl(0, "@diff.delta",                 { fg = c.yellow })

-- Conceal / spell
hl(0, "@conceal",                    { fg = c.fg_muted })
hl(0, "@spell",                      { })
hl(0, "@nospell",                    { })

-- ─── LSP semantic tokens ──────────────────────────────────────────────────────
hl(0, "@lsp.type.class",             { fg = c.yellow })
hl(0, "@lsp.type.comment",           { fg = c.fg_muted, italic = true })
hl(0, "@lsp.type.decorator",         { fg = c.purple, italic = true })
hl(0, "@lsp.type.enum",              { fg = c.fg })
hl(0, "@lsp.type.enumMember",        { fg = c.purple, italic = true })
hl(0, "@lsp.type.function",          { fg = c.cyan })
hl(0, "@lsp.type.interface",         { fg = c.yellow })
hl(0, "@lsp.type.keyword",           { fg = c.purple, italic = true })
hl(0, "@lsp.type.macro",             { fg = c.purple, italic = true })
hl(0, "@lsp.type.method",            { fg = c.cyan })
hl(0, "@lsp.type.namespace",         { fg = c.fg_dim })
hl(0, "@lsp.type.number",            { fg = c.yellow })
hl(0, "@lsp.type.operator",          { fg = c.orange })
hl(0, "@lsp.type.parameter",         { fg = c.fg_dim })
hl(0, "@lsp.type.property",          { fg = c.white })
hl(0, "@lsp.type.regexp",            { fg = c.green })
hl(0, "@lsp.type.string",            { fg = c.green })
hl(0, "@lsp.type.struct",            { fg = c.yellow })
hl(0, "@lsp.type.type",              { fg = c.yellow })
hl(0, "@lsp.type.typeParameter",     { fg = c.yellow })
hl(0, "@lsp.type.variable",          { fg = c.fg_dim })
hl(0, "@lsp.mod.readonly",           { fg = c.purple, italic = true })
hl(0, "@lsp.mod.defaultLibrary",     { fg = c.cyan })
hl(0, "@lsp.mod.deprecated",         { strikethrough = true })

-- ─── LSP diagnostics ─────────────────────────────────────────────────────────
hl(0, "DiagnosticError",             { fg = c.red_dark })
hl(0, "DiagnosticWarn",              { fg = c.yellow })
hl(0, "DiagnosticInfo",              { fg = c.blue })
hl(0, "DiagnosticHint",              { fg = c.hint })
hl(0, "DiagnosticOk",                { fg = c.green })

hl(0, "DiagnosticVirtualTextError",  { fg = c.red_dark,  bg = "#3a2020", italic = true })
hl(0, "DiagnosticVirtualTextWarn",   { fg = c.yellow,    bg = "#302e1a", italic = true })
hl(0, "DiagnosticVirtualTextInfo",   { fg = c.blue,      bg = "#1e2632", italic = true })
hl(0, "DiagnosticVirtualTextHint",   { fg = c.hint,      italic = true })

hl(0, "DiagnosticUnderlineError",    { undercurl = true, sp = c.red_dark })
hl(0, "DiagnosticUnderlineWarn",     { undercurl = true, sp = c.yellow })
hl(0, "DiagnosticUnderlineInfo",     { undercurl = true, sp = c.blue })
hl(0, "DiagnosticUnderlineHint",     { undercurl = true, sp = c.hint })

hl(0, "DiagnosticSignError",         { fg = c.red_dark })
hl(0, "DiagnosticSignWarn",          { fg = c.yellow })
hl(0, "DiagnosticSignInfo",          { fg = c.blue })
hl(0, "DiagnosticSignHint",          { fg = c.hint })

-- ─── LSP references (document highlight) ─────────────────────────────────────
hl(0, "LspReferenceText",            { bg = c.bg_doc_hl })
hl(0, "LspReferenceRead",            { bg = c.bg_doc_hl })
hl(0, "LspReferenceWrite",           { bg = c.bg_active })
hl(0, "LspInlayHint",               { fg = c.predictive, italic = true })
hl(0, "LspCodeLens",                 { fg = c.fg_muted, italic = true })

-- ─── Git signs (lewis6991/gitsigns.nvim) ─────────────────────────────────────
hl(0, "GitSignsAdd",                 { fg = c.green })
hl(0, "GitSignsChange",              { fg = c.yellow })
hl(0, "GitSignsDelete",              { fg = c.red_dark })
hl(0, "GitSignsAddNr",               { fg = c.green })
hl(0, "GitSignsChangeNr",            { fg = c.yellow })
hl(0, "GitSignsDeleteNr",            { fg = c.red_dark })
hl(0, "GitSignsAddLn",               { bg = "#1e3a2b" })
hl(0, "GitSignsChangeLn",            { bg = "#2e2d1e" })
hl(0, "GitSignsDeleteLn",            { bg = "#3a1e1e" })

-- ─── Indent guides (lukas-reineke/indent-blankline.nvim) ─────────────────────
hl(0, "IblIndent",                   { fg = c.bg_indent })
hl(0, "IblScope",                    { fg = c.border })
hl(0, "IblWhitespace",               { fg = c.bg_indent })

-- ─── Telescope ────────────────────────────────────────────────────────────────
hl(0, "TelescopeNormal",             { bg = c.bg_dark, fg = c.fg })
hl(0, "TelescopeBorder",             { bg = c.bg_dark, fg = c.border })
hl(0, "TelescopePromptNormal",       { bg = c.bg_active, fg = c.fg })
hl(0, "TelescopePromptBorder",       { bg = c.bg_active, fg = c.border })
hl(0, "TelescopePromptTitle",        { bg = c.cyan, fg = c.bg_dark, bold = true })
hl(0, "TelescopeResultsTitle",       { fg = c.border })
hl(0, "TelescopePreviewTitle",       { bg = c.green, fg = c.bg_dark, bold = true })
hl(0, "TelescopeSelection",          { bg = c.bg_active, fg = c.fg })
hl(0, "TelescopeSelectionCaret",     { fg = c.cyan })
hl(0, "TelescopeMatching",           { fg = c.yellow, bold = true })

-- ─── nvim-cmp ────────────────────────────────────────────────────────────────
hl(0, "CmpItemAbbr",                 { fg = c.fg })
hl(0, "CmpItemAbbrDeprecated",       { fg = c.fg_muted, strikethrough = true })
hl(0, "CmpItemAbbrMatch",            { fg = c.yellow, bold = true })
hl(0, "CmpItemAbbrMatchFuzzy",       { fg = c.yellow })
hl(0, "CmpItemMenu",                 { fg = c.fg_muted, italic = true })
hl(0, "CmpItemKindText",             { fg = c.fg })
hl(0, "CmpItemKindMethod",           { fg = c.cyan })
hl(0, "CmpItemKindFunction",         { fg = c.cyan })
hl(0, "CmpItemKindConstructor",      { fg = c.red })
hl(0, "CmpItemKindField",            { fg = c.white })
hl(0, "CmpItemKindVariable",         { fg = c.fg_dim })
hl(0, "CmpItemKindClass",            { fg = c.yellow })
hl(0, "CmpItemKindInterface",        { fg = c.yellow })
hl(0, "CmpItemKindModule",           { fg = c.fg_dim })
hl(0, "CmpItemKindProperty",         { fg = c.white })
hl(0, "CmpItemKindUnit",             { fg = c.yellow })
hl(0, "CmpItemKindValue",            { fg = c.green })
hl(0, "CmpItemKindEnum",             { fg = c.fg })
hl(0, "CmpItemKindKeyword",          { fg = c.purple })
hl(0, "CmpItemKindSnippet",          { fg = c.orange })
hl(0, "CmpItemKindColor",            { fg = c.orange })
hl(0, "CmpItemKindFile",             { fg = c.fg })
hl(0, "CmpItemKindReference",        { fg = c.blue })
hl(0, "CmpItemKindFolder",           { fg = c.fg })
hl(0, "CmpItemKindEnumMember",       { fg = c.purple })
hl(0, "CmpItemKindConstant",         { fg = c.purple })
hl(0, "CmpItemKindStruct",           { fg = c.yellow })
hl(0, "CmpItemKindEvent",            { fg = c.orange })
hl(0, "CmpItemKindOperator",         { fg = c.orange })
hl(0, "CmpItemKindTypeParameter",    { fg = c.yellow })

-- ─── Neo-tree / nvim-tree ─────────────────────────────────────────────────────
hl(0, "NeoTreeNormal",               { bg = c.bg_dark, fg = c.fg })
hl(0, "NeoTreeNormalNC",             { bg = c.bg_dark, fg = c.fg })
hl(0, "NeoTreeEndOfBuffer",          { bg = c.bg_dark })
hl(0, "NeoTreeRootName",             { fg = c.cyan, bold = true })
hl(0, "NeoTreeFileName",             { fg = c.fg })
hl(0, "NeoTreeFileIcon",             { fg = c.fg_muted })
hl(0, "NeoTreeDirectoryName",        { fg = c.blue })
hl(0, "NeoTreeDirectoryIcon",        { fg = c.blue })
hl(0, "NeoTreeSymbolicLinkTarget",   { fg = c.cyan })
hl(0, "NeoTreeGitAdded",             { fg = c.green })
hl(0, "NeoTreeGitConflict",          { fg = c.magenta })
hl(0, "NeoTreeGitDeleted",           { fg = c.red_dark })
hl(0, "NeoTreeGitModified",          { fg = c.yellow })
hl(0, "NeoTreeGitUntracked",         { fg = c.fg_muted })
hl(0, "NeoTreeGitIgnored",           { fg = c.fg_muted })
hl(0, "NeoTreeDimText",              { fg = c.fg_muted })

-- ─── Which-key ────────────────────────────────────────────────────────────────
hl(0, "WhichKey",                    { fg = c.cyan })
hl(0, "WhichKeyGroup",               { fg = c.blue })
hl(0, "WhichKeyDesc",                { fg = c.fg })
hl(0, "WhichKeySeparator",           { fg = c.fg_muted })
hl(0, "WhichKeyFloat",               { bg = c.bg_dark })
hl(0, "WhichKeyBorder",              { bg = c.bg_dark, fg = c.border })

-- ─── Notify (rcarriga/nvim-notify) ───────────────────────────────────────────
hl(0, "NotifyERRORBorder",           { fg = c.red_dark })
hl(0, "NotifyWARNBorder",            { fg = c.yellow })
hl(0, "NotifyINFOBorder",            { fg = c.blue })
hl(0, "NotifyHINTBorder",            { fg = c.hint })
hl(0, "NotifyERRORTitle",            { fg = c.red_dark, bold = true })
hl(0, "NotifyWARNTitle",             { fg = c.yellow, bold = true })
hl(0, "NotifyINFOTitle",             { fg = c.blue, bold = true })
hl(0, "NotifyHINTTitle",             { fg = c.hint, bold = true })
hl(0, "NotifyERRORIcon",             { fg = c.red_dark })
hl(0, "NotifyWARNIcon",              { fg = c.yellow })
hl(0, "NotifyINFOIcon",              { fg = c.blue })
hl(0, "NotifyHINTIcon",              { fg = c.hint })
hl(0, "NotifyERRORBody",             { bg = c.bg_dark, fg = c.fg })
hl(0, "NotifyWARNBody",              { bg = c.bg_dark, fg = c.fg })
hl(0, "NotifyINFOBody",              { bg = c.bg_dark, fg = c.fg })
hl(0, "NotifyHINTBody",              { bg = c.bg_dark, fg = c.fg })

-- ─── Terminal colours (for :terminal) ────────────────────────────────────────
vim.g.terminal_color_0  = c.t_black
vim.g.terminal_color_1  = c.t_red
vim.g.terminal_color_2  = c.t_green
vim.g.terminal_color_3  = c.t_yellow
vim.g.terminal_color_4  = c.t_blue
vim.g.terminal_color_5  = c.t_magenta
vim.g.terminal_color_6  = c.t_cyan
vim.g.terminal_color_7  = c.t_white
vim.g.terminal_color_8  = c.t_br_black
vim.g.terminal_color_9  = c.t_br_red
vim.g.terminal_color_10 = c.t_br_green
vim.g.terminal_color_11 = c.t_br_yellow
vim.g.terminal_color_12 = c.t_br_blue
vim.g.terminal_color_13 = c.t_br_magenta
vim.g.terminal_color_14 = c.t_br_cyan
vim.g.terminal_color_15 = c.t_br_white
