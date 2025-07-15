---@class ArcanumElixir
---@field config ArcanumElixirConfig
---@field palette ArcanumElixirPalette
local ArcanumElixir = {}

---@alias Contrast "hard" | "soft" | ""

---@class ItalicConfig
---@field strings boolean
---@field comments boolean
---@field operators boolean
---@field folds boolean
---@field emphasis boolean

---@class HighlightDefinition
---@field fg string?
---@field bg string?
---@field sp string?
---@field blend integer?
---@field bold boolean?
---@field standout boolean?
---@field underline boolean?
---@field undercurl boolean?
---@field underdouble boolean?
---@field underdotted boolean?
---@field strikethrough boolean?
---@field italic boolean?
---@field reverse boolean?
---@field nocombine boolean?

---@class ArcanumElixirConfig
---@field bold boolean?
---@field contrast Contrast?
---@field dim_inactive boolean?
---@field inverse boolean?
---@field invert_selection boolean?
---@field invert_signs boolean?
---@field invert_tabline boolean?
---@field italic ItalicConfig?
---@field overrides table<string, HighlightDefinition>?
---@field palette_overrides table<string, string>?
---@field strikethrough boolean?
---@field terminal_colors boolean?
---@field transparent_mode boolean?
---@field undercurl boolean?
---@field underline boolean?
ArcanumElixir.config = {
  terminal_colors = true,
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true,
  contrast = "",
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
}

-- main arcanum-elixir color palette
---@class ArcanumElixirPalette
ArcanumElixir.palette = {
  -- Background tones (lightest to medium - ONLY ELIXIR PURPLES)
  light0_hard = "#E6D4F2", -- Hardest light background - light lavender purple
  light0 = "#E3D1F0", -- Default light background - main elixir purple
  light0_soft = "#E0CEEE", -- Softest light background - soft purple
  light1 = "#DCC8EB", -- Light tone variation - cream purple
  light2 = "#D5BEE6", -- Medium light tone - medium light purple
  light3 = "#CDB2E0", -- Medium tone - medium lavender purple
  light4 = "#C4A5D9", -- Medium dark tone - violet purple

  -- Text tones (darkest to medium - ONLY DARK PURPLES)
  dark0_hard = "#1F0640", -- Deepest text - darkest purple
  dark0 = "#260A43", -- Primary text - main dark purple (based on logo)
  dark0_soft = "#2E1148", -- Soft variant - soft dark purple
  dark1 = "#37184F", -- Primary text consistency - secondary purple
  dark2 = "#412157", -- Secondary text - tertiary purple
  dark3 = "#4C2A60", -- Tertiary text - quaternary purple
  dark4 = "#58346A", -- Quaternary text - lighter purple

  -- Dark theme background tones (darkest to medium - ONLY DARK PURPLES)
  dark_bg0_hard = "#150633", -- Hardest dark background - charcoal purple
  dark_bg0 = "#190A38", -- Default dark background - main dark purple
  dark_bg0_soft = "#1E0F3D", -- Softest dark background - soft dark purple
  dark_bg1 = "#251544", -- Dark tone variation - dark purple variation
  dark_bg2 = "#2D1C4B", -- Medium dark tone - medium dark purple
  dark_bg3 = "#362454", -- Medium tone - medium purple
  dark_bg4 = "#402D5E", -- Medium light tone - medium light purple

  -- Dark theme text tones (lightest to medium - ONLY LIGHT PURPLES)
  light_fg0_hard = "#EDE2F5", -- Brightest text - lightest purple
  light_fg0 = "#E8DCF2", -- Primary text - main light purple
  light_fg0_soft = "#E3D5EF", -- Soft variant - soft light purple
  light_fg1 = "#DDCDEB", -- Primary text consistency - secondary light purple
  light_fg2 = "#D6C4E7", -- Secondary text - tertiary light purple
  light_fg3 = "#CEBAE2", -- Tertiary text - quaternary light purple
  light_fg4 = "#C5AFDD", -- Quaternary text - darker light purple

  -- Syntax colors (ONLY PURPLE VARIATIONS - different hues 260-290°)
  neutral_red = "#761F93", -- errors/warnings - magenta purple (285°)
  neutral_green = "#492183", -- strings - bluish purple (265°)
  neutral_yellow = "#781DA5", -- keywords - bright purple (280°)
  neutral_blue = "#4D2277", -- functions - deep purple (270°)
  neutral_purple = "#7319B3", -- types - saturated main purple (275°)
  neutral_aqua = "#3F1E6E", -- constants - dark bluish purple (265°)
  neutral_orange = "#761F93", -- numbers/special - magenta purple (same as red)

  -- Dark theme syntax colors (LIGHTER PURPLES for contrast)
  dark_neutral_red = "#B566CC", -- errors/warnings - light magenta purple
  dark_neutral_green = "#8766B8", -- strings - light bluish purple
  dark_neutral_yellow = "#BC6FD9", -- keywords - light bright purple
  dark_neutral_blue = "#9266B3", -- functions - light deep purple
  dark_neutral_purple = "#C266E0", -- types - light main purple
  dark_neutral_aqua = "#7B66A3", -- constants - light medium bluish purple
  dark_neutral_orange = "#B566CC", -- numbers/special - light magenta purple

  -- Bright colors (BRIGHT PURPLES)
  bright_red = "#9933B8", -- bright magenta purple
  bright_green = "#6B4D99", -- bright bluish purple
  bright_yellow = "#A642D6", -- main bright purple
  bright_blue = "#704D99", -- bright deep purple
  bright_purple = "#A633E6", -- bright main purple
  bright_aqua = "#5C4D8A", -- dark bright bluish purple
  bright_orange = "#9933B8", -- bright magenta purple (same as red)

  -- Dark theme bright colors (SUPER LIGHT PURPLES)
  dark_bright_red = "#D999E6", -- super light magenta purple
  dark_bright_green = "#B399D1", -- super light bluish purple
  dark_bright_yellow = "#E699F5", -- super light bright purple
  dark_bright_blue = "#C299D6", -- super light deep purple
  dark_bright_purple = "#E699FF", -- super light main purple
  dark_bright_aqua = "#A699C7", -- super light bluish purple
  dark_bright_orange = "#D999E6", -- super light magenta purple

  -- Faded colors (FADED PURPLES)
  faded_red = "#4D1F5C", -- faded magenta purple
  faded_green = "#3D2252", -- faded bluish purple
  faded_yellow = "#522966", -- faded bright purple
  faded_blue = "#42214F", -- faded deep purple
  faded_purple = "#521A70", -- faded main purple
  faded_aqua = "#382147", -- faded dark bluish purple
  faded_orange = "#4D1F5C", -- faded magenta purple

  -- Dark theme faded colors (LIGHT FADED PURPLES)
  dark_faded_red = "#8A5C99", -- light faded magenta purple
  dark_faded_green = "#755C8A", -- light faded bluish purple
  dark_faded_yellow = "#9966A8", -- light faded bright purple
  dark_faded_blue = "#7D5C94", -- light faded deep purple
  dark_faded_purple = "#9952B8", -- light faded main purple
  dark_faded_aqua = "#6B5C80", -- light faded bluish purple
  dark_faded_orange = "#8A5C99", -- light faded magenta purple

  -- Red color variants (MAGENTA PURPLE VARIATIONS)
  dark_red_hard = "#2E1A3D", -- hard dark magenta purple
  dark_red = "#3D1F52", -- standard dark magenta purple
  dark_red_soft = "#4A2661", -- soft dark magenta purple
  light_red_hard = "#C7A3D6", -- hard light magenta purple
  light_red = "#BD94CC", -- standard light magenta purple
  light_red_soft = "#B285C2", -- soft light magenta purple

  -- Dark theme red variants (MAGENTA PURPLES FOR DARK THEME)
  dark_theme_red_hard = "#E6C2F0", -- hard dark theme magenta purple
  dark_theme_red = "#E0B8EB", -- standard dark theme magenta purple
  dark_theme_red_soft = "#D9ADE6", -- soft dark theme magenta purple

  -- Green color variants (BLUISH PURPLE VARIATIONS)
  dark_green_hard = "#261A3D", -- hard dark bluish purple
  dark_green = "#331F52", -- standard dark bluish purple
  dark_green_soft = "#402661", -- soft dark bluish purple
  light_green_hard = "#B8A3D6", -- hard light bluish purple
  light_green = "#AD94CC", -- standard light bluish purple
  light_green_soft = "#A285C2", -- soft light bluish purple

  -- Dark theme green variants (BLUISH PURPLES FOR DARK THEME)
  dark_theme_green_hard = "#D6C2F0", -- hard dark theme bluish purple
  dark_theme_green = "#CCB8EB", -- standard dark theme bluish purple
  dark_theme_green_soft = "#C2ADE6", -- soft dark theme bluish purple

  -- Aqua color variants (DARK BLUISH PURPLE VARIATIONS)
  dark_aqua_hard = "#1F1A33", -- hard very dark bluish purple
  dark_aqua = "#261F42", -- standard very dark bluish purple
  dark_aqua_soft = "#2D2652", -- soft very dark bluish purple
  light_aqua_hard = "#A394C7", -- hard medium light bluish purple
  light_aqua = "#9485BD", -- standard medium light bluish purple
  light_aqua_soft = "#8576B3", -- soft medium light bluish purple

  -- Dark theme aqua variants (MEDIUM BLUISH PURPLES FOR DARK THEME)
  dark_theme_aqua_hard = "#C2B8E6", -- hard medium dark theme bluish purple
  dark_theme_aqua = "#B8ADDB", -- standard medium dark theme bluish purple
  dark_theme_aqua_soft = "#ADA3D1", -- soft medium dark theme bluish purple

  -- Comments and UI elements (PURPLE FOR COMMENTS)
  gray = "#6B4599", -- medium purple for comments - WCAG AA contrast (4.59:1)

  -- Dark theme gray (LIGHT PURPLE FOR COMMENTS IN DARK THEME)
  dark_gray = "#B399CC", -- light purple for comments in dark theme
}

-- get a hex list of arcanum-elixir colors based on current bg and constrast config
local function get_colors()
  local p = ArcanumElixir.palette
  local config = ArcanumElixir.config

  for color, hex in pairs(config.palette_overrides) do
    p[color] = hex
  end

  local bg = vim.o.background
  local contrast = config.contrast

  local color_groups = {
    dark = {
      bg0 = p.dark_bg0,
      bg1 = p.dark_bg1,
      bg2 = p.dark_bg2,
      bg3 = p.dark_bg3,
      bg4 = p.dark_bg4,
      fg0 = p.light_fg0,
      fg1 = p.light_fg1,
      fg2 = p.light_fg2,
      fg3 = p.light_fg3,
      fg4 = p.light_fg4,
      red = p.dark_bright_red,
      green = p.dark_bright_green,
      yellow = p.dark_bright_yellow,
      blue = p.dark_bright_blue,
      purple = p.dark_bright_purple,
      aqua = p.dark_bright_aqua,
      orange = p.dark_bright_orange,
      neutral_red = p.dark_neutral_red,
      neutral_green = p.dark_neutral_green,
      neutral_yellow = p.dark_neutral_yellow,
      neutral_blue = p.dark_neutral_blue,
      neutral_purple = p.dark_neutral_purple,
      neutral_aqua = p.dark_neutral_aqua,
      dark_red = p.dark_theme_red,
      dark_green = p.dark_theme_green,
      dark_aqua = p.dark_theme_aqua,
      gray = p.dark_gray,
    },
    light = {
      bg0 = p.light0,
      bg1 = p.light1,
      bg2 = p.light2,
      bg3 = p.light3,
      bg4 = p.light4,
      fg0 = p.dark0,
      fg1 = p.dark1,
      fg2 = p.dark2,
      fg3 = p.dark3,
      fg4 = p.dark4,
      red = p.faded_red,
      green = p.faded_green,
      yellow = p.faded_yellow,
      blue = p.faded_blue,
      purple = p.faded_purple,
      aqua = p.faded_aqua,
      orange = p.faded_orange,
      neutral_red = p.neutral_red,
      neutral_green = p.neutral_green,
      neutral_yellow = p.neutral_yellow,
      neutral_blue = p.neutral_blue,
      neutral_purple = p.neutral_purple,
      neutral_aqua = p.neutral_aqua,
      dark_red = p.light_red,
      dark_green = p.light_green,
      dark_aqua = p.light_aqua,
      gray = p.gray,
    },
  }

  if contrast ~= nil and contrast ~= "" then
    if bg == "dark" then
      color_groups[bg].bg0 = p["dark_bg0_" .. contrast]
      color_groups[bg].dark_red = p["dark_theme_red_" .. contrast]
      color_groups[bg].dark_green = p["dark_theme_green_" .. contrast]
      color_groups[bg].dark_aqua = p["dark_theme_aqua_" .. contrast]
    else
      color_groups[bg].bg0 = p[bg .. "0_" .. contrast]
      color_groups[bg].dark_red = p[bg .. "_red_" .. contrast]
      color_groups[bg].dark_green = p[bg .. "_green_" .. contrast]
      color_groups[bg].dark_aqua = p[bg .. "_aqua_" .. contrast]
    end
  end

  return color_groups[bg]
end

local function get_groups()
  local colors = get_colors()
  local config = ArcanumElixir.config

  if config.terminal_colors then
    local term_colors = {
      colors.bg0,
      colors.neutral_red,
      colors.neutral_green,
      colors.neutral_yellow,
      colors.neutral_blue,
      colors.neutral_purple,
      colors.neutral_aqua,
      colors.fg4,
      colors.gray,
      colors.red,
      colors.green,
      colors.yellow,
      colors.blue,
      colors.purple,
      colors.aqua,
      colors.fg1,
    }
    for index, value in ipairs(term_colors) do
      vim.g["terminal_color_" .. index - 1] = value
    end
  end

  local groups = {
    ArcanumElixirFg0 = { fg = colors.fg0 },
    ArcanumElixirFg1 = { fg = colors.fg1 },
    ArcanumElixirFg2 = { fg = colors.fg2 },
    ArcanumElixirFg3 = { fg = colors.fg3 },
    ArcanumElixirFg4 = { fg = colors.fg4 },
    ArcanumElixirGray = { fg = colors.gray },
    ArcanumElixirBg0 = { fg = colors.bg0 },
    ArcanumElixirBg1 = { fg = colors.bg1 },
    ArcanumElixirBg2 = { fg = colors.bg2 },
    ArcanumElixirBg3 = { fg = colors.bg3 },
    ArcanumElixirBg4 = { fg = colors.bg4 },
    ArcanumElixirRed = { fg = colors.red },
    ArcanumElixirRedBold = { fg = colors.red, bold = config.bold },
    ArcanumElixirGreen = { fg = colors.green },
    ArcanumElixirGreenBold = { fg = colors.green, bold = config.bold },
    ArcanumElixirYellow = { fg = colors.yellow },
    ArcanumElixirYellowBold = { fg = colors.yellow, bold = config.bold },
    ArcanumElixirBlue = { fg = colors.blue },
    ArcanumElixirBlueBold = { fg = colors.blue, bold = config.bold },
    ArcanumElixirPurple = { fg = colors.purple },
    ArcanumElixirPurpleBold = { fg = colors.purple, bold = config.bold },
    ArcanumElixirAqua = { fg = colors.aqua },
    ArcanumElixirAquaBold = { fg = colors.aqua, bold = config.bold },
    ArcanumElixirOrange = { fg = colors.orange },
    ArcanumElixirOrangeBold = { fg = colors.orange, bold = config.bold },
    ArcanumElixirRedSign = config.transparent_mode and { fg = colors.red, reverse = config.invert_signs }
      or { fg = colors.red, bg = colors.bg1, reverse = config.invert_signs },
    ArcanumElixirGreenSign = config.transparent_mode and { fg = colors.green, reverse = config.invert_signs }
      or { fg = colors.green, bg = colors.bg1, reverse = config.invert_signs },
    ArcanumElixirYellowSign = config.transparent_mode and { fg = colors.yellow, reverse = config.invert_signs }
      or { fg = colors.yellow, bg = colors.bg1, reverse = config.invert_signs },
    ArcanumElixirBlueSign = config.transparent_mode and { fg = colors.blue, reverse = config.invert_signs }
      or { fg = colors.blue, bg = colors.bg1, reverse = config.invert_signs },
    ArcanumElixirPurpleSign = config.transparent_mode and { fg = colors.purple, reverse = config.invert_signs }
      or { fg = colors.purple, bg = colors.bg1, reverse = config.invert_signs },
    ArcanumElixirAquaSign = config.transparent_mode and { fg = colors.aqua, reverse = config.invert_signs }
      or { fg = colors.aqua, bg = colors.bg1, reverse = config.invert_signs },
    ArcanumElixirOrangeSign = config.transparent_mode and { fg = colors.orange, reverse = config.invert_signs }
      or { fg = colors.orange, bg = colors.bg1, reverse = config.invert_signs },
    ArcanumElixirRedUnderline = { undercurl = config.undercurl, sp = colors.red },
    ArcanumElixirGreenUnderline = { undercurl = config.undercurl, sp = colors.green },
    ArcanumElixirYellowUnderline = { undercurl = config.undercurl, sp = colors.yellow },
    ArcanumElixirBlueUnderline = { undercurl = config.undercurl, sp = colors.blue },
    ArcanumElixirPurpleUnderline = { undercurl = config.undercurl, sp = colors.purple },
    ArcanumElixirAquaUnderline = { undercurl = config.undercurl, sp = colors.aqua },
    ArcanumElixirOrangeUnderline = { undercurl = config.undercurl, sp = colors.orange },
    Normal = config.transparent_mode and { fg = colors.fg1, bg = nil } or { fg = colors.fg1, bg = colors.bg0 },
    NormalFloat = config.transparent_mode and { fg = colors.fg1, bg = nil } or { fg = colors.fg1, bg = colors.bg1 },
    NormalNC = config.dim_inactive and { fg = colors.fg0, bg = colors.bg1 } or { link = "Normal" },
    CursorLine = { bg = colors.bg1 },
    CursorColumn = { link = "CursorLine" },
    TabLineFill = { fg = colors.bg4, bg = colors.bg1, reverse = config.invert_tabline },
    TabLineSel = { fg = colors.green, bg = colors.bg1, reverse = config.invert_tabline },
    TabLine = { link = "TabLineFill" },
    MatchParen = { bg = colors.bg3, bold = config.bold },
    ColorColumn = { bg = colors.bg1 },
    Conceal = { fg = colors.blue },
    CursorLineNr = { fg = colors.yellow, bg = colors.bg1 },
    NonText = { link = "ArcanumElixirBg2" },
    SpecialKey = { link = "ArcanumElixirFg4" },
    Visual = { bg = colors.bg3, reverse = config.invert_selection },
    VisualNOS = { link = "Visual" },
    Search = { fg = colors.yellow, bg = colors.bg0, reverse = config.inverse },
    IncSearch = { fg = colors.orange, bg = colors.bg0, reverse = config.inverse },
    CurSearch = { link = "IncSearch" },
    QuickFixLine = { link = "ArcanumElixirPurple" },
    Underlined = { fg = colors.blue, underline = config.underline },
    StatusLine = { fg = colors.fg1, bg = colors.bg2 },
    StatusLineNC = { fg = colors.fg4, bg = colors.bg1 },
    WinBar = { fg = colors.fg4, bg = colors.bg0 },
    WinBarNC = { fg = colors.fg3, bg = colors.bg1 },
    WinSeparator = config.transparent_mode and { fg = colors.bg3, bg = nil } or { fg = colors.bg3, bg = colors.bg0 },
    WildMenu = { fg = colors.blue, bg = colors.bg2, bold = config.bold },
    Directory = { link = "ArcanumElixirGreenBold" },
    Title = { link = "ArcanumElixirGreenBold" },
    ErrorMsg = { fg = colors.bg0, bg = colors.red, bold = config.bold },
    MoreMsg = { link = "ArcanumElixirYellowBold" },
    ModeMsg = { link = "ArcanumElixirYellowBold" },
    Question = { link = "ArcanumElixirOrangeBold" },
    WarningMsg = { link = "ArcanumElixirRedBold" },
    LineNr = { fg = colors.bg4 },
    SignColumn = config.transparent_mode and { bg = nil } or { bg = colors.bg1 },
    Folded = { fg = colors.gray, bg = colors.bg1, italic = config.italic.folds },
    FoldColumn = config.transparent_mode and { fg = colors.gray, bg = nil } or { fg = colors.gray, bg = colors.bg1 },
    Cursor = { reverse = config.inverse },
    vCursor = { link = "Cursor" },
    iCursor = { link = "Cursor" },
    lCursor = { link = "Cursor" },
    Special = { link = "ArcanumElixirOrange" },
    Comment = { fg = colors.gray, italic = config.italic.comments },
    Todo = { fg = colors.bg0, bg = colors.yellow, bold = config.bold, italic = config.italic.comments },
    Done = { fg = colors.orange, bold = config.bold, italic = config.italic.comments },
    Error = { fg = colors.red, bold = config.bold, reverse = config.inverse },
    Statement = { link = "ArcanumElixirRed" },
    Conditional = { link = "ArcanumElixirRed" },
    Repeat = { link = "ArcanumElixirRed" },
    Label = { link = "ArcanumElixirRed" },
    Exception = { link = "ArcanumElixirRed" },
    Operator = { fg = colors.orange, italic = config.italic.operators },
    Keyword = { link = "ArcanumElixirRed" },
    Identifier = { link = "ArcanumElixirBlue" },
    Function = { link = "ArcanumElixirGreenBold" },
    PreProc = { link = "ArcanumElixirAqua" },
    Include = { link = "ArcanumElixirAqua" },
    Define = { link = "ArcanumElixirAqua" },
    Macro = { link = "ArcanumElixirAqua" },
    PreCondit = { link = "ArcanumElixirAqua" },
    Constant = { link = "ArcanumElixirPurple" },
    Character = { link = "ArcanumElixirPurple" },
    String = { fg = colors.green, italic = config.italic.strings },
    Boolean = { link = "ArcanumElixirPurple" },
    Number = { link = "ArcanumElixirPurple" },
    Float = { link = "ArcanumElixirPurple" },
    Type = { link = "ArcanumElixirYellow" },
    StorageClass = { link = "ArcanumElixirOrange" },
    Structure = { link = "ArcanumElixirAqua" },
    Typedef = { link = "ArcanumElixirYellow" },
    Pmenu = { fg = colors.fg1, bg = colors.bg2 },
    PmenuSel = { fg = colors.bg2, bg = colors.blue, bold = config.bold },
    PmenuSbar = { bg = colors.bg2 },
    PmenuThumb = { bg = colors.bg4 },
    DiffDelete = { bg = colors.dark_red },
    DiffAdd = { bg = colors.dark_green },
    DiffChange = { bg = colors.dark_aqua },
    DiffText = { bg = colors.yellow, fg = colors.bg0 },
    SpellCap = { link = "ArcanumElixirBlueUnderline" },
    SpellBad = { link = "ArcanumElixirRedUnderline" },
    SpellLocal = { link = "ArcanumElixirAquaUnderline" },
    SpellRare = { link = "ArcanumElixirPurpleUnderline" },
    Whitespace = { fg = colors.bg2 },
    Delimiter = { link = "ArcanumElixirOrange" },
    EndOfBuffer = { link = "NonText" },
    DiagnosticError = { link = "ArcanumElixirRed" },
    DiagnosticWarn = { link = "ArcanumElixirYellow" },
    DiagnosticInfo = { link = "ArcanumElixirBlue" },
    DiagnosticHint = { link = "ArcanumElixirAqua" },
    DiagnosticOk = { link = "ArcanumElixirGreen" },
    DiagnosticSignError = { link = "ArcanumElixirRedSign" },
    DiagnosticSignWarn = { link = "ArcanumElixirYellowSign" },
    DiagnosticSignInfo = { link = "ArcanumElixirBlueSign" },
    DiagnosticSignHint = { link = "ArcanumElixirAquaSign" },
    DiagnosticSignOk = { link = "ArcanumElixirGreenSign" },
    DiagnosticUnderlineError = { link = "ArcanumElixirRedUnderline" },
    DiagnosticUnderlineWarn = { link = "ArcanumElixirYellowUnderline" },
    DiagnosticUnderlineInfo = { link = "ArcanumElixirBlueUnderline" },
    DiagnosticUnderlineHint = { link = "ArcanumElixirAquaUnderline" },
    DiagnosticUnderlineOk = { link = "ArcanumElixirGreenUnderline" },
    DiagnosticFloatingError = { link = "ArcanumElixirRed" },
    DiagnosticFloatingWarn = { link = "ArcanumElixirOrange" },
    DiagnosticFloatingInfo = { link = "ArcanumElixirBlue" },
    DiagnosticFloatingHint = { link = "ArcanumElixirAqua" },
    DiagnosticFloatingOk = { link = "ArcanumElixirGreen" },
    DiagnosticVirtualTextError = { link = "ArcanumElixirRed" },
    DiagnosticVirtualTextWarn = { link = "ArcanumElixirYellow" },
    DiagnosticVirtualTextInfo = { link = "ArcanumElixirBlue" },
    DiagnosticVirtualTextHint = { link = "ArcanumElixirAqua" },
    DiagnosticVirtualTextOk = { link = "ArcanumElixirGreen" },
    LspReferenceRead = { link = "ArcanumElixirYellowBold" },
    LspReferenceTarget = { link = "Visual" },
    LspReferenceText = { link = "ArcanumElixirYellowBold" },
    LspReferenceWrite = { link = "ArcanumElixirOrangeBold" },
    LspCodeLens = { link = "ArcanumElixirGray" },
    LspSignatureActiveParameter = { link = "Search" },
    gitcommitSelectedFile = { link = "ArcanumElixirGreen" },
    gitcommitDiscardedFile = { link = "ArcanumElixirRed" },
    GitSignsAdd = { link = "ArcanumElixirGreen" },
    GitSignsChange = { link = "ArcanumElixirOrange" },
    GitSignsDelete = { link = "ArcanumElixirRed" },
    NvimTreeSymlink = { fg = colors.neutral_aqua },
    NvimTreeRootFolder = { fg = colors.neutral_purple, bold = true },
    NvimTreeFolderIcon = { fg = colors.neutral_blue, bold = true },
    NvimTreeFileIcon = { fg = colors.light2 },
    NvimTreeExecFile = { fg = colors.neutral_green, bold = true },
    NvimTreeOpenedFile = { fg = colors.bright_red, bold = true },
    NvimTreeSpecialFile = { fg = colors.neutral_yellow, bold = true, underline = true },
    NvimTreeImageFile = { fg = colors.neutral_purple },
    NvimTreeIndentMarker = { fg = colors.dark3 },
    NvimTreeGitDirty = { fg = colors.neutral_yellow },
    NvimTreeGitStaged = { fg = colors.neutral_yellow },
    NvimTreeGitMerge = { fg = colors.neutral_purple },
    NvimTreeGitRenamed = { fg = colors.neutral_purple },
    NvimTreeGitNew = { fg = colors.neutral_yellow },
    NvimTreeGitDeleted = { fg = colors.neutral_red },
    NvimTreeWindowPicker = { bg = colors.aqua },
    debugPC = { link = "DiffAdd" },
    debugBreakpoint = { link = "ArcanumElixirRedSign" },
    StartifyBracket = { link = "ArcanumElixirFg3" },
    StartifyFile = { link = "ArcanumElixirFg1" },
    StartifyNumber = { link = "ArcanumElixirBlue" },
    StartifyPath = { link = "ArcanumElixirGray" },
    StartifySlash = { link = "ArcanumElixirGray" },
    StartifySection = { link = "ArcanumElixirYellow" },
    StartifySpecial = { link = "ArcanumElixirBg2" },
    StartifyHeader = { link = "ArcanumElixirOrange" },
    StartifyFooter = { link = "ArcanumElixirBg2" },
    StartifyVar = { link = "StartifyPath" },
    StartifySelect = { link = "Title" },
    DirvishPathTail = { link = "ArcanumElixirAqua" },
    DirvishArg = { link = "ArcanumElixirYellow" },
    netrwDir = { link = "ArcanumElixirAqua" },
    netrwClassify = { link = "ArcanumElixirAqua" },
    netrwLink = { link = "ArcanumElixirGray" },
    netrwSymLink = { link = "ArcanumElixirFg1" },
    netrwExe = { link = "ArcanumElixirYellow" },
    netrwComment = { link = "ArcanumElixirGray" },
    netrwList = { link = "ArcanumElixirBlue" },
    netrwHelpCmd = { link = "ArcanumElixirAqua" },
    netrwCmdSep = { link = "ArcanumElixirFg3" },
    netrwVersion = { link = "ArcanumElixirGreen" },
    NERDTreeDir = { link = "ArcanumElixirAqua" },
    NERDTreeDirSlash = { link = "ArcanumElixirAqua" },
    NERDTreeOpenable = { link = "ArcanumElixirOrange" },
    NERDTreeClosable = { link = "ArcanumElixirOrange" },
    NERDTreeFile = { link = "ArcanumElixirFg1" },
    NERDTreeExecFile = { link = "ArcanumElixirYellow" },
    NERDTreeUp = { link = "ArcanumElixirGray" },
    NERDTreeCWD = { link = "ArcanumElixirGreen" },
    NERDTreeHelp = { link = "ArcanumElixirFg1" },
    NERDTreeToggleOn = { link = "ArcanumElixirGreen" },
    NERDTreeToggleOff = { link = "ArcanumElixirRed" },
    CocErrorSign = { link = "ArcanumElixirRedSign" },
    CocWarningSign = { link = "ArcanumElixirOrangeSign" },
    CocInfoSign = { link = "ArcanumElixirBlueSign" },
    CocHintSign = { link = "ArcanumElixirAquaSign" },
    CocErrorFloat = { link = "ArcanumElixirRed" },
    CocWarningFloat = { link = "ArcanumElixirOrange" },
    CocInfoFloat = { link = "ArcanumElixirBlue" },
    CocHintFloat = { link = "ArcanumElixirAqua" },
    CocDiagnosticsError = { link = "ArcanumElixirRed" },
    CocDiagnosticsWarning = { link = "ArcanumElixirOrange" },
    CocDiagnosticsInfo = { link = "ArcanumElixirBlue" },
    CocDiagnosticsHint = { link = "ArcanumElixirAqua" },
    CocSearch = { link = "ArcanumElixirBlue" },
    CocSelectedText = { link = "ArcanumElixirRed" },
    CocMenuSel = { link = "PmenuSel" },
    CocCodeLens = { link = "ArcanumElixirGray" },
    CocErrorHighlight = { link = "ArcanumElixirRedUnderline" },
    CocWarningHighlight = { link = "ArcanumElixirOrangeUnderline" },
    CocInfoHighlight = { link = "ArcanumElixirBlueUnderline" },
    CocHintHighlight = { link = "ArcanumElixirAquaUnderline" },
    SnacksPicker = { link = "ArcanumElixirFg1" },
    SnacksPickerBorder = { link = "SnacksPicker" },
    SnacksPickerListCursorLine = { link = "CursorLine" },
    SnacksPickerMatch = { link = "ArcanumElixirOrange" },
    SnacksPickerPrompt = { link = "ArcanumElixirRed" },
    SnacksPickerTitle = { link = "SnacksPicker" },
    SnacksPickerDir = { link = "ArcanumElixirGray" },
    SnacksPickerPathHidden = { link = "ArcanumElixirGray" },
    SnacksPickerGitStatusUntracked = { link = "ArcanumElixirGray" },
    SnacksPickerPathIgnored = { link = "ArcanumElixirBg3" },
    TelescopeNormal = { link = "ArcanumElixirFg1" },
    TelescopeSelection = { link = "CursorLine" },
    TelescopeSelectionCaret = { link = "ArcanumElixirRed" },
    TelescopeMultiSelection = { link = "ArcanumElixirGray" },
    TelescopeBorder = { link = "TelescopeNormal" },
    TelescopePromptBorder = { link = "TelescopeNormal" },
    TelescopeResultsBorder = { link = "TelescopeNormal" },
    TelescopePreviewBorder = { link = "TelescopeNormal" },
    TelescopeMatching = { link = "ArcanumElixirOrange" },
    TelescopePromptPrefix = { link = "ArcanumElixirRed" },
    TelescopePrompt = { link = "TelescopeNormal" },
    CmpItemAbbr = { link = "ArcanumElixirFg0" },
    CmpItemAbbrDeprecated = { link = "ArcanumElixirFg1" },
    CmpItemAbbrMatch = { link = "ArcanumElixirBlueBold" },
    CmpItemAbbrMatchFuzzy = { link = "ArcanumElixirBlueUnderline" },
    CmpItemMenu = { link = "ArcanumElixirGray" },
    CmpItemKindText = { link = "ArcanumElixirOrange" },
    CmpItemKindVariable = { link = "ArcanumElixirOrange" },
    CmpItemKindMethod = { link = "ArcanumElixirBlue" },
    CmpItemKindFunction = { link = "ArcanumElixirBlue" },
    CmpItemKindConstructor = { link = "ArcanumElixirYellow" },
    CmpItemKindUnit = { link = "ArcanumElixirBlue" },
    CmpItemKindField = { link = "ArcanumElixirBlue" },
    CmpItemKindClass = { link = "ArcanumElixirYellow" },
    CmpItemKindInterface = { link = "ArcanumElixirYellow" },
    CmpItemKindModule = { link = "ArcanumElixirBlue" },
    CmpItemKindProperty = { link = "ArcanumElixirBlue" },
    CmpItemKindValue = { link = "ArcanumElixirOrange" },
    CmpItemKindEnum = { link = "ArcanumElixirYellow" },
    CmpItemKindOperator = { link = "ArcanumElixirYellow" },
    CmpItemKindKeyword = { link = "ArcanumElixirPurple" },
    CmpItemKindEvent = { link = "ArcanumElixirPurple" },
    CmpItemKindReference = { link = "ArcanumElixirPurple" },
    CmpItemKindColor = { link = "ArcanumElixirPurple" },
    CmpItemKindSnippet = { link = "ArcanumElixirGreen" },
    CmpItemKindFile = { link = "ArcanumElixirBlue" },
    CmpItemKindFolder = { link = "ArcanumElixirBlue" },
    CmpItemKindEnumMember = { link = "ArcanumElixirAqua" },
    CmpItemKindConstant = { link = "ArcanumElixirOrange" },
    CmpItemKindStruct = { link = "ArcanumElixirYellow" },
    CmpItemKindTypeParameter = { link = "ArcanumElixirYellow" },
    BlinkCmpLabel = { link = "ArcanumElixirFg0" },
    BlinkCmpLabelDeprecated = { link = "ArcanumElixirFg1" },
    BlinkCmpLabelMatch = { link = "ArcanumElixirBlueBold" },
    BlinkCmpLabelDetail = { link = "ArcanumElixirGray" },
    BlinkCmpLabelDescription = { link = "ArcanumElixirGray" },
    BlinkCmpKindText = { link = "ArcanumElixirOrange" },
    BlinkCmpKindVariable = { link = "ArcanumElixirOrange" },
    BlinkCmpKindMethod = { link = "ArcanumElixirBlue" },
    BlinkCmpKindFunction = { link = "ArcanumElixirBlue" },
    BlinkCmpKindConstructor = { link = "ArcanumElixirYellow" },
    BlinkCmpKindUnit = { link = "ArcanumElixirBlue" },
    BlinkCmpKindField = { link = "ArcanumElixirBlue" },
    BlinkCmpKindClass = { link = "ArcanumElixirYellow" },
    BlinkCmpKindInterface = { link = "ArcanumElixirYellow" },
    BlinkCmpKindModule = { link = "ArcanumElixirBlue" },
    BlinkCmpKindProperty = { link = "ArcanumElixirBlue" },
    BlinkCmpKindValue = { link = "ArcanumElixirOrange" },
    BlinkCmpKindEnum = { link = "ArcanumElixirYellow" },
    BlinkCmpKindOperator = { link = "ArcanumElixirYellow" },
    BlinkCmpKindKeyword = { link = "ArcanumElixirPurple" },
    BlinkCmpKindEvent = { link = "ArcanumElixirPurple" },
    BlinkCmpKindReference = { link = "ArcanumElixirPurple" },
    BlinkCmpKindColor = { link = "ArcanumElixirPurple" },
    BlinkCmpKindSnippet = { link = "ArcanumElixirGreen" },
    BlinkCmpKindFile = { link = "ArcanumElixirBlue" },
    BlinkCmpKindFolder = { link = "ArcanumElixirBlue" },
    BlinkCmpKindEnumMember = { link = "ArcanumElixirAqua" },
    BlinkCmpKindConstant = { link = "ArcanumElixirOrange" },
    BlinkCmpKindStruct = { link = "ArcanumElixirYellow" },
    BlinkCmpKindTypeParameter = { link = "ArcanumElixirYellow" },
    BlinkCmpSource = { link = "ArcanumElixirGray" },
    BlinkCmpGhostText = { link = "ArcanumElixirBg4" },
    diffAdded = { link = "DiffAdd" },
    diffRemoved = { link = "DiffDelete" },
    diffChanged = { link = "DiffChange" },
    diffFile = { link = "ArcanumElixirOrange" },
    diffNewFile = { link = "ArcanumElixirYellow" },
    diffOldFile = { link = "ArcanumElixirOrange" },
    diffLine = { link = "ArcanumElixirBlue" },
    diffIndexLine = { link = "diffChanged" },
    NavicIconsFile = { link = "ArcanumElixirBlue" },
    NavicIconsModule = { link = "ArcanumElixirOrange" },
    NavicIconsNamespace = { link = "ArcanumElixirBlue" },
    NavicIconsPackage = { link = "ArcanumElixirAqua" },
    NavicIconsClass = { link = "ArcanumElixirYellow" },
    NavicIconsMethod = { link = "ArcanumElixirBlue" },
    NavicIconsProperty = { link = "ArcanumElixirAqua" },
    NavicIconsField = { link = "ArcanumElixirPurple" },
    NavicIconsConstructor = { link = "ArcanumElixirBlue" },
    NavicIconsEnum = { link = "ArcanumElixirPurple" },
    NavicIconsInterface = { link = "ArcanumElixirGreen" },
    NavicIconsFunction = { link = "ArcanumElixirBlue" },
    NavicIconsVariable = { link = "ArcanumElixirPurple" },
    NavicIconsConstant = { link = "ArcanumElixirOrange" },
    NavicIconsString = { link = "ArcanumElixirGreen" },
    NavicIconsNumber = { link = "ArcanumElixirOrange" },
    NavicIconsBoolean = { link = "ArcanumElixirOrange" },
    NavicIconsArray = { link = "ArcanumElixirOrange" },
    NavicIconsObject = { link = "ArcanumElixirOrange" },
    NavicIconsKey = { link = "ArcanumElixirAqua" },
    NavicIconsNull = { link = "ArcanumElixirOrange" },
    NavicIconsEnumMember = { link = "ArcanumElixirYellow" },
    NavicIconsStruct = { link = "ArcanumElixirPurple" },
    NavicIconsEvent = { link = "ArcanumElixirYellow" },
    NavicIconsOperator = { link = "ArcanumElixirRed" },
    NavicIconsTypeParameter = { link = "ArcanumElixirRed" },
    NavicText = { link = "ArcanumElixirWhite" },
    NavicSeparator = { link = "ArcanumElixirWhite" },
    htmlTag = { link = "ArcanumElixirAquaBold" },
    htmlEndTag = { link = "ArcanumElixirAquaBold" },
    htmlTagName = { link = "ArcanumElixirBlue" },
    htmlArg = { link = "ArcanumElixirOrange" },
    htmlTagN = { link = "ArcanumElixirFg1" },
    htmlSpecialTagName = { link = "ArcanumElixirBlue" },
    htmlLink = { fg = colors.fg4, underline = config.underline },
    htmlSpecialChar = { link = "ArcanumElixirRed" },
    htmlBold = { fg = colors.fg0, bg = colors.bg0, bold = config.bold },
    htmlBoldUnderline = { fg = colors.fg0, bg = colors.bg0, bold = config.bold, underline = config.underline },
    htmlBoldItalic = { fg = colors.fg0, bg = colors.bg0, bold = config.bold, italic = true },
    htmlBoldUnderlineItalic = {
      fg = colors.fg0,
      bg = colors.bg0,
      bold = config.bold,
      italic = true,
      underline = config.underline,
    },
    htmlUnderline = { fg = colors.fg0, bg = colors.bg0, underline = config.underline },
    htmlUnderlineItalic = {
      fg = colors.fg0,
      bg = colors.bg0,
      italic = true,
      underline = config.underline,
    },
    htmlItalic = { fg = colors.fg0, bg = colors.bg0, italic = true },
    xmlTag = { link = "ArcanumElixirAquaBold" },
    xmlEndTag = { link = "ArcanumElixirAquaBold" },
    xmlTagName = { link = "ArcanumElixirBlue" },
    xmlEqual = { link = "ArcanumElixirBlue" },
    docbkKeyword = { link = "ArcanumElixirAquaBold" },
    xmlDocTypeDecl = { link = "ArcanumElixirGray" },
    xmlDocTypeKeyword = { link = "ArcanumElixirPurple" },
    xmlCdataStart = { link = "ArcanumElixirGray" },
    xmlCdataCdata = { link = "ArcanumElixirPurple" },
    dtdFunction = { link = "ArcanumElixirGray" },
    dtdTagName = { link = "ArcanumElixirPurple" },
    xmlAttrib = { link = "ArcanumElixirOrange" },
    xmlProcessingDelim = { link = "ArcanumElixirGray" },
    dtdParamEntityPunct = { link = "ArcanumElixirGray" },
    dtdParamEntityDPunct = { link = "ArcanumElixirGray" },
    xmlAttribPunct = { link = "ArcanumElixirGray" },
    xmlEntity = { link = "ArcanumElixirRed" },
    xmlEntityPunct = { link = "ArcanumElixirRed" },
    clojureKeyword = { link = "ArcanumElixirBlue" },
    clojureCond = { link = "ArcanumElixirOrange" },
    clojureSpecial = { link = "ArcanumElixirOrange" },
    clojureDefine = { link = "ArcanumElixirOrange" },
    clojureFunc = { link = "ArcanumElixirYellow" },
    clojureRepeat = { link = "ArcanumElixirYellow" },
    clojureCharacter = { link = "ArcanumElixirAqua" },
    clojureStringEscape = { link = "ArcanumElixirAqua" },
    clojureException = { link = "ArcanumElixirRed" },
    clojureRegexp = { link = "ArcanumElixirAqua" },
    clojureRegexpEscape = { link = "ArcanumElixirAqua" },
    clojureRegexpCharClass = { fg = colors.fg3, bold = config.bold },
    clojureRegexpMod = { link = "clojureRegexpCharClass" },
    clojureRegexpQuantifier = { link = "clojureRegexpCharClass" },
    clojureParen = { link = "ArcanumElixirFg3" },
    clojureAnonArg = { link = "ArcanumElixirYellow" },
    clojureVariable = { link = "ArcanumElixirBlue" },
    clojureMacro = { link = "ArcanumElixirOrange" },
    clojureMeta = { link = "ArcanumElixirYellow" },
    clojureDeref = { link = "ArcanumElixirYellow" },
    clojureQuote = { link = "ArcanumElixirYellow" },
    clojureUnquote = { link = "ArcanumElixirYellow" },
    cOperator = { link = "ArcanumElixirPurple" },
    cppOperator = { link = "ArcanumElixirPurple" },
    cStructure = { link = "ArcanumElixirOrange" },
    pythonBuiltin = { link = "ArcanumElixirOrange" },
    pythonBuiltinObj = { link = "ArcanumElixirOrange" },
    pythonBuiltinFunc = { link = "ArcanumElixirOrange" },
    pythonFunction = { link = "ArcanumElixirAqua" },
    pythonDecorator = { link = "ArcanumElixirRed" },
    pythonInclude = { link = "ArcanumElixirBlue" },
    pythonImport = { link = "ArcanumElixirBlue" },
    pythonRun = { link = "ArcanumElixirBlue" },
    pythonCoding = { link = "ArcanumElixirBlue" },
    pythonOperator = { link = "ArcanumElixirRed" },
    pythonException = { link = "ArcanumElixirRed" },
    pythonExceptions = { link = "ArcanumElixirPurple" },
    pythonBoolean = { link = "ArcanumElixirPurple" },
    pythonDot = { link = "ArcanumElixirFg3" },
    pythonConditional = { link = "ArcanumElixirRed" },
    pythonRepeat = { link = "ArcanumElixirRed" },
    pythonDottedName = { link = "ArcanumElixirGreenBold" },
    cssBraces = { link = "ArcanumElixirBlue" },
    cssFunctionName = { link = "ArcanumElixirYellow" },
    cssIdentifier = { link = "ArcanumElixirOrange" },
    cssClassName = { link = "ArcanumElixirGreen" },
    cssColor = { link = "ArcanumElixirBlue" },
    cssSelectorOp = { link = "ArcanumElixirBlue" },
    cssSelectorOp2 = { link = "ArcanumElixirBlue" },
    cssImportant = { link = "ArcanumElixirGreen" },
    cssVendor = { link = "ArcanumElixirFg1" },
    cssTextProp = { link = "ArcanumElixirAqua" },
    cssAnimationProp = { link = "ArcanumElixirAqua" },
    cssUIProp = { link = "ArcanumElixirYellow" },
    cssTransformProp = { link = "ArcanumElixirAqua" },
    cssTransitionProp = { link = "ArcanumElixirAqua" },
    cssPrintProp = { link = "ArcanumElixirAqua" },
    cssPositioningProp = { link = "ArcanumElixirYellow" },
    cssBoxProp = { link = "ArcanumElixirAqua" },
    cssFontDescriptorProp = { link = "ArcanumElixirAqua" },
    cssFlexibleBoxProp = { link = "ArcanumElixirAqua" },
    cssBorderOutlineProp = { link = "ArcanumElixirAqua" },
    cssBackgroundProp = { link = "ArcanumElixirAqua" },
    cssMarginProp = { link = "ArcanumElixirAqua" },
    cssListProp = { link = "ArcanumElixirAqua" },
    cssTableProp = { link = "ArcanumElixirAqua" },
    cssFontProp = { link = "ArcanumElixirAqua" },
    cssPaddingProp = { link = "ArcanumElixirAqua" },
    cssDimensionProp = { link = "ArcanumElixirAqua" },
    cssRenderProp = { link = "ArcanumElixirAqua" },
    cssColorProp = { link = "ArcanumElixirAqua" },
    cssGeneratedContentProp = { link = "ArcanumElixirAqua" },
    javaScriptBraces = { link = "ArcanumElixirFg1" },
    javaScriptFunction = { link = "ArcanumElixirAqua" },
    javaScriptIdentifier = { link = "ArcanumElixirRed" },
    javaScriptMember = { link = "ArcanumElixirBlue" },
    javaScriptNumber = { link = "ArcanumElixirPurple" },
    javaScriptNull = { link = "ArcanumElixirPurple" },
    javaScriptParens = { link = "ArcanumElixirFg3" },
    typescriptReserved = { link = "ArcanumElixirAqua" },
    typescriptLabel = { link = "ArcanumElixirAqua" },
    typescriptFuncKeyword = { link = "ArcanumElixirAqua" },
    typescriptIdentifier = { link = "ArcanumElixirOrange" },
    typescriptBraces = { link = "ArcanumElixirFg1" },
    typescriptEndColons = { link = "ArcanumElixirFg1" },
    typescriptDOMObjects = { link = "ArcanumElixirFg1" },
    typescriptAjaxMethods = { link = "ArcanumElixirFg1" },
    typescriptLogicSymbols = { link = "ArcanumElixirFg1" },
    typescriptDocSeeTag = { link = "Comment" },
    typescriptDocParam = { link = "Comment" },
    typescriptDocTags = { link = "vimCommentTitle" },
    typescriptGlobalObjects = { link = "ArcanumElixirFg1" },
    typescriptParens = { link = "ArcanumElixirFg3" },
    typescriptOpSymbols = { link = "ArcanumElixirFg3" },
    typescriptHtmlElemProperties = { link = "ArcanumElixirFg1" },
    typescriptNull = { link = "ArcanumElixirPurple" },
    typescriptInterpolationDelimiter = { link = "ArcanumElixirAqua" },
    purescriptModuleKeyword = { link = "ArcanumElixirAqua" },
    purescriptModuleName = { link = "ArcanumElixirFg1" },
    purescriptWhere = { link = "ArcanumElixirAqua" },
    purescriptDelimiter = { link = "ArcanumElixirFg4" },
    purescriptType = { link = "ArcanumElixirFg1" },
    purescriptImportKeyword = { link = "ArcanumElixirAqua" },
    purescriptHidingKeyword = { link = "ArcanumElixirAqua" },
    purescriptAsKeyword = { link = "ArcanumElixirAqua" },
    purescriptStructure = { link = "ArcanumElixirAqua" },
    purescriptOperator = { link = "ArcanumElixirBlue" },
    purescriptTypeVar = { link = "ArcanumElixirFg1" },
    purescriptConstructor = { link = "ArcanumElixirFg1" },
    purescriptFunction = { link = "ArcanumElixirFg1" },
    purescriptConditional = { link = "ArcanumElixirOrange" },
    purescriptBacktick = { link = "ArcanumElixirOrange" },
    coffeeExtendedOp = { link = "ArcanumElixirFg3" },
    coffeeSpecialOp = { link = "ArcanumElixirFg3" },
    coffeeCurly = { link = "ArcanumElixirOrange" },
    coffeeParen = { link = "ArcanumElixirFg3" },
    coffeeBracket = { link = "ArcanumElixirOrange" },
    rubyStringDelimiter = { link = "ArcanumElixirGreen" },
    rubyInterpolationDelimiter = { link = "ArcanumElixirAqua" },
    rubyDefinedOperator = { link = "rubyKeyword" },
    objcTypeModifier = { link = "ArcanumElixirRed" },
    objcDirective = { link = "ArcanumElixirBlue" },
    goDirective = { link = "ArcanumElixirAqua" },
    goConstants = { link = "ArcanumElixirPurple" },
    goDeclaration = { link = "ArcanumElixirRed" },
    goDeclType = { link = "ArcanumElixirBlue" },
    goBuiltins = { link = "ArcanumElixirOrange" },
    luaIn = { link = "ArcanumElixirRed" },
    luaFunction = { link = "ArcanumElixirAqua" },
    luaTable = { link = "ArcanumElixirOrange" },
    moonSpecialOp = { link = "ArcanumElixirFg3" },
    moonExtendedOp = { link = "ArcanumElixirFg3" },
    moonFunction = { link = "ArcanumElixirFg3" },
    moonObject = { link = "ArcanumElixirYellow" },
    javaAnnotation = { link = "ArcanumElixirBlue" },
    javaDocTags = { link = "ArcanumElixirAqua" },
    javaCommentTitle = { link = "vimCommentTitle" },
    javaParen = { link = "ArcanumElixirFg3" },
    javaParen1 = { link = "ArcanumElixirFg3" },
    javaParen2 = { link = "ArcanumElixirFg3" },
    javaParen3 = { link = "ArcanumElixirFg3" },
    javaParen4 = { link = "ArcanumElixirFg3" },
    javaParen5 = { link = "ArcanumElixirFg3" },
    javaOperator = { link = "ArcanumElixirOrange" },
    javaVarArg = { link = "ArcanumElixirGreen" },
    elixirDocString = { link = "Comment" },
    elixirStringDelimiter = { link = "ArcanumElixirGreen" },
    elixirInterpolationDelimiter = { link = "ArcanumElixirAqua" },
    elixirModuleDeclaration = { link = "ArcanumElixirYellow" },
    scalaNameDefinition = { link = "ArcanumElixirFg1" },
    scalaCaseFollowing = { link = "ArcanumElixirFg1" },
    scalaCapitalWord = { link = "ArcanumElixirFg1" },
    scalaTypeExtension = { link = "ArcanumElixirFg1" },
    scalaKeyword = { link = "ArcanumElixirRed" },
    scalaKeywordModifier = { link = "ArcanumElixirRed" },
    scalaSpecial = { link = "ArcanumElixirAqua" },
    scalaOperator = { link = "ArcanumElixirFg1" },
    scalaTypeDeclaration = { link = "ArcanumElixirYellow" },
    scalaTypeTypePostDeclaration = { link = "ArcanumElixirYellow" },
    scalaInstanceDeclaration = { link = "ArcanumElixirFg1" },
    scalaInterpolation = { link = "ArcanumElixirAqua" },
    markdownItalic = { fg = colors.fg3, italic = true },
    markdownBold = { fg = colors.fg3, bold = config.bold },
    markdownBoldItalic = { fg = colors.fg3, bold = config.bold, italic = true },
    markdownH1 = { link = "ArcanumElixirGreenBold" },
    markdownH2 = { link = "ArcanumElixirGreenBold" },
    markdownH3 = { link = "ArcanumElixirYellowBold" },
    markdownH4 = { link = "ArcanumElixirYellowBold" },
    markdownH5 = { link = "ArcanumElixirYellow" },
    markdownH6 = { link = "ArcanumElixirYellow" },
    markdownCode = { link = "ArcanumElixirAqua" },
    markdownCodeBlock = { link = "ArcanumElixirAqua" },
    markdownCodeDelimiter = { link = "ArcanumElixirAqua" },
    markdownBlockquote = { link = "ArcanumElixirGray" },
    markdownListMarker = { link = "ArcanumElixirGray" },
    markdownOrderedListMarker = { link = "ArcanumElixirGray" },
    markdownRule = { link = "ArcanumElixirGray" },
    markdownHeadingRule = { link = "ArcanumElixirGray" },
    markdownUrlDelimiter = { link = "ArcanumElixirFg3" },
    markdownLinkDelimiter = { link = "ArcanumElixirFg3" },
    markdownLinkTextDelimiter = { link = "ArcanumElixirFg3" },
    markdownHeadingDelimiter = { link = "ArcanumElixirOrange" },
    markdownUrl = { link = "ArcanumElixirPurple" },
    markdownUrlTitleDelimiter = { link = "ArcanumElixirGreen" },
    markdownLinkText = { fg = colors.gray, underline = config.underline },
    markdownIdDeclaration = { link = "markdownLinkText" },
    haskellType = { link = "ArcanumElixirBlue" },
    haskellIdentifier = { link = "ArcanumElixirAqua" },
    haskellSeparator = { link = "ArcanumElixirFg4" },
    haskellDelimiter = { link = "ArcanumElixirOrange" },
    haskellOperators = { link = "ArcanumElixirPurple" },
    haskellBacktick = { link = "ArcanumElixirOrange" },
    haskellStatement = { link = "ArcanumElixirPurple" },
    haskellConditional = { link = "ArcanumElixirPurple" },
    haskellLet = { link = "ArcanumElixirRed" },
    haskellDefault = { link = "ArcanumElixirRed" },
    haskellWhere = { link = "ArcanumElixirRed" },
    haskellBottom = { link = "ArcanumElixirRedBold" },
    haskellImportKeywords = { link = "ArcanumElixirPurpleBold" },
    haskellDeclKeyword = { link = "ArcanumElixirOrange" },
    haskellDecl = { link = "ArcanumElixirOrange" },
    haskellDeriving = { link = "ArcanumElixirPurple" },
    haskellAssocType = { link = "ArcanumElixirAqua" },
    haskellNumber = { link = "ArcanumElixirAqua" },
    haskellPragma = { link = "ArcanumElixirRedBold" },
    haskellTH = { link = "ArcanumElixirAquaBold" },
    haskellForeignKeywords = { link = "ArcanumElixirGreen" },
    haskellKeyword = { link = "ArcanumElixirRed" },
    haskellFloat = { link = "ArcanumElixirAqua" },
    haskellInfix = { link = "ArcanumElixirPurple" },
    haskellQuote = { link = "ArcanumElixirGreenBold" },
    haskellShebang = { link = "ArcanumElixirYellowBold" },
    haskellLiquid = { link = "ArcanumElixirPurpleBold" },
    haskellQuasiQuoted = { link = "ArcanumElixirBlueBold" },
    haskellRecursiveDo = { link = "ArcanumElixirPurple" },
    haskellQuotedType = { link = "ArcanumElixirRed" },
    haskellPreProc = { link = "ArcanumElixirFg4" },
    haskellTypeRoles = { link = "ArcanumElixirRedBold" },
    haskellTypeForall = { link = "ArcanumElixirRed" },
    haskellPatternKeyword = { link = "ArcanumElixirBlue" },
    jsonKeyword = { link = "ArcanumElixirGreen" },
    jsonQuote = { link = "ArcanumElixirGreen" },
    jsonBraces = { link = "ArcanumElixirFg1" },
    jsonString = { link = "ArcanumElixirFg1" },
    mailQuoted1 = { link = "ArcanumElixirAqua" },
    mailQuoted2 = { link = "ArcanumElixirPurple" },
    mailQuoted3 = { link = "ArcanumElixirYellow" },
    mailQuoted4 = { link = "ArcanumElixirGreen" },
    mailQuoted5 = { link = "ArcanumElixirRed" },
    mailQuoted6 = { link = "ArcanumElixirOrange" },
    mailSignature = { link = "Comment" },
    csBraces = { link = "ArcanumElixirFg1" },
    csEndColon = { link = "ArcanumElixirFg1" },
    csLogicSymbols = { link = "ArcanumElixirFg1" },
    csParens = { link = "ArcanumElixirFg3" },
    csOpSymbols = { link = "ArcanumElixirFg3" },
    csInterpolationDelimiter = { link = "ArcanumElixirFg3" },
    csInterpolationAlignDel = { link = "ArcanumElixirAquaBold" },
    csInterpolationFormat = { link = "ArcanumElixirAqua" },
    csInterpolationFormatDel = { link = "ArcanumElixirAquaBold" },
    rustSigil = { link = "ArcanumElixirOrange" },
    rustEscape = { link = "ArcanumElixirAqua" },
    rustStringContinuation = { link = "ArcanumElixirAqua" },
    rustEnum = { link = "ArcanumElixirAqua" },
    rustStructure = { link = "ArcanumElixirAqua" },
    rustModPathSep = { link = "ArcanumElixirFg2" },
    rustCommentLineDoc = { link = "Comment" },
    rustDefault = { link = "ArcanumElixirAqua" },
    ocamlOperator = { link = "ArcanumElixirFg1" },
    ocamlKeyChar = { link = "ArcanumElixirOrange" },
    ocamlArrow = { link = "ArcanumElixirOrange" },
    ocamlInfixOpKeyword = { link = "ArcanumElixirRed" },
    ocamlConstructor = { link = "ArcanumElixirOrange" },
    LspSagaCodeActionTitle = { link = "Title" },
    LspSagaCodeActionBorder = { link = "ArcanumElixirFg1" },
    LspSagaCodeActionContent = { fg = colors.green, bold = config.bold },
    LspSagaLspFinderBorder = { link = "ArcanumElixirFg1" },
    LspSagaAutoPreview = { link = "ArcanumElixirOrange" },
    TargetWord = { fg = colors.blue, bold = config.bold },
    FinderSeparator = { link = "ArcanumElixirAqua" },
    LspSagaDefPreviewBorder = { link = "ArcanumElixirBlue" },
    LspSagaHoverBorder = { link = "ArcanumElixirOrange" },
    LspSagaRenameBorder = { link = "ArcanumElixirBlue" },
    LspSagaDiagnosticSource = { link = "ArcanumElixirOrange" },
    LspSagaDiagnosticBorder = { link = "ArcanumElixirPurple" },
    LspSagaDiagnosticHeader = { link = "ArcanumElixirGreen" },
    LspSagaSignatureHelpBorder = { link = "ArcanumElixirGreen" },
    SagaShadow = { link = "ArcanumElixirBg0" },
    DashboardShortCut = { link = "ArcanumElixirOrange" },
    DashboardHeader = { link = "ArcanumElixirAqua" },
    DashboardCenter = { link = "ArcanumElixirYellow" },
    DashboardFooter = { fg = colors.purple, italic = true },
    MasonHighlight = { link = "ArcanumElixirAqua" },
    MasonHighlightBlock = { fg = colors.bg0, bg = colors.blue },
    MasonHighlightBlockBold = { fg = colors.bg0, bg = colors.blue, bold = true },
    MasonHighlightSecondary = { fg = colors.yellow },
    MasonHighlightBlockSecondary = { fg = colors.bg0, bg = colors.yellow },
    MasonHighlightBlockBoldSecondary = { fg = colors.bg0, bg = colors.yellow, bold = true },
    MasonHeader = { link = "MasonHighlightBlockBoldSecondary" },
    MasonHeaderSecondary = { link = "MasonHighlightBlockBold" },
    MasonMuted = { fg = colors.fg4 },
    MasonMutedBlock = { fg = colors.bg0, bg = colors.fg4 },
    MasonMutedBlockBold = { fg = colors.bg0, bg = colors.fg4, bold = true },
    LspInlayHint = { link = "comment" },
    CarbonFile = { link = "ArcanumElixirFg1" },
    CarbonExe = { link = "ArcanumElixirYellow" },
    CarbonSymlink = { link = "ArcanumElixirAqua" },
    CarbonBrokenSymlink = { link = "ArcanumElixirRed" },
    CarbonIndicator = { link = "ArcanumElixirGray" },
    CarbonDanger = { link = "ArcanumElixirRed" },
    CarbonPending = { link = "ArcanumElixirYellow" },
    NoiceCursor = { link = "TermCursor" },
    NoiceCmdlinePopupBorder = { fg = colors.blue, bg = nil },
    NoiceCmdlineIcon = { link = "NoiceCmdlinePopupBorder" },
    NoiceConfirmBorder = { link = "NoiceCmdlinePopupBorder" },
    NoiceCmdlinePopupBorderSearch = { fg = colors.yellow, bg = nil },
    NoiceCmdlineIconSearch = { link = "NoiceCmdlinePopupBorderSearch" },
    NotifyDEBUGBorder = { link = "ArcanumElixirBlue" },
    NotifyDEBUGIcon = { link = "ArcanumElixirBlue" },
    NotifyDEBUGTitle = { link = "ArcanumElixirBlue" },
    NotifyERRORBorder = { link = "ArcanumElixirRed" },
    NotifyERRORIcon = { link = "ArcanumElixirRed" },
    NotifyERRORTitle = { link = "ArcanumElixirRed" },
    NotifyINFOBorder = { link = "ArcanumElixirAqua" },
    NotifyINFOIcon = { link = "ArcanumElixirAqua" },
    NotifyINFOTitle = { link = "ArcanumElixirAqua" },
    NotifyTRACEBorder = { link = "ArcanumElixirGreen" },
    NotifyTRACEIcon = { link = "ArcanumElixirGreen" },
    NotifyTRACETitle = { link = "ArcanumElixirGreen" },
    NotifyWARNBorder = { link = "ArcanumElixirYellow" },
    NotifyWARNIcon = { link = "ArcanumElixirYellow" },
    NotifyWARNTitle = { link = "ArcanumElixirYellow" },
    IlluminatedWordText = { link = "LspReferenceText" },
    IlluminatedWordRead = { link = "LspReferenceRead" },
    IlluminatedWordWrite = { link = "LspReferenceWrite" },
    TSRainbowRed = { fg = colors.red },
    TSRainbowOrange = { fg = colors.orange },
    TSRainbowYellow = { fg = colors.yellow },
    TSRainbowGreen = { fg = colors.green },
    TSRainbowBlue = { fg = colors.blue },
    TSRainbowViolet = { fg = colors.purple },
    TSRainbowCyan = { fg = colors.aqua },
    RainbowDelimiterRed = { fg = colors.red },
    RainbowDelimiterOrange = { fg = colors.orange },
    RainbowDelimiterYellow = { fg = colors.yellow },
    RainbowDelimiterGreen = { fg = colors.green },
    RainbowDelimiterBlue = { fg = colors.blue },
    RainbowDelimiterViolet = { fg = colors.purple },
    RainbowDelimiterCyan = { fg = colors.aqua },
    DapBreakpointSymbol = { fg = colors.red, bg = colors.bg1 },
    DapStoppedSymbol = { fg = colors.green, bg = colors.bg1 },
    DapUIBreakpointsCurrentLine = { link = "ArcanumElixirYellow" },
    DapUIBreakpointsDisabledLine = { link = "ArcanumElixirGray" },
    DapUIBreakpointsInfo = { link = "ArcanumElixirAqua" },
    DapUIBreakpointsLine = { link = "ArcanumElixirYellow" },
    DapUIBreakpointsPath = { link = "ArcanumElixirBlue" },
    DapUICurrentFrameName = { link = "ArcanumElixirPurple" },
    DapUIDecoration = { link = "ArcanumElixirPurple" },
    DapUIEndofBuffer = { link = "EndOfBuffer" },
    DapUIFloatBorder = { link = "ArcanumElixirAqua" },
    DapUILineNumber = { link = "ArcanumElixirYellow" },
    DapUIModifiedValue = { link = "ArcanumElixirRed" },
    DapUIPlayPause = { fg = colors.green, bg = colors.bg1 },
    DapUIRestart = { fg = colors.green, bg = colors.bg1 },
    DapUIScope = { link = "ArcanumElixirBlue" },
    DapUISource = { link = "ArcanumElixirFg1" },
    DapUIStepBack = { fg = colors.blue, bg = colors.bg1 },
    DapUIStepInto = { fg = colors.blue, bg = colors.bg1 },
    DapUIStepOut = { fg = colors.blue, bg = colors.bg1 },
    DapUIStepOver = { fg = colors.blue, bg = colors.bg1 },
    DapUIStop = { fg = colors.red, bg = colors.bg1 },
    DapUIStoppedThread = { link = "ArcanumElixirBlue" },
    DapUIThread = { link = "ArcanumElixirBlue" },
    DapUIType = { link = "ArcanumElixirOrange" },
    DapUIUnavailable = { link = "ArcanumElixirGray" },
    DapUIWatchesEmpty = { link = "ArcanumElixirGray" },
    DapUIWatchesError = { link = "ArcanumElixirRed" },
    DapUIWatchesValue = { link = "ArcanumElixirYellow" },
    DapUIWinSelect = { link = "ArcanumElixirYellow" },
    NeogitDiffDelete = { link = "DiffDelete" },
    NeogitDiffAdd = { link = "DiffAdd" },
    NeogitHunkHeader = { link = "WinBar" },
    NeogitHunkHeaderHighlight = { link = "WinBarNC" },
    DiffviewStatusModified = { link = "ArcanumElixirGreenBold" },
    DiffviewFilePanelInsertions = { link = "ArcanumElixirGreenBold" },
    DiffviewFilePanelDeletions = { link = "ArcanumElixirRedBold" },
    MiniAnimateCursor = { reverse = true, nocombine = true },
    MiniAnimateNormalFloat = { fg = colors.fg1, bg = colors.bg1 },
    MiniClueBorder = { link = "FloatBorder" },
    MiniClueDescGroup = { link = "DiagnosticFloatingWarn" },
    MiniClueDescSingle = { link = "NormalFloat" },
    MiniClueNextKey = { link = "DiagnosticFloatingHint" },
    MiniClueNextKeyWithPostkeys = { link = "DiagnosticFloatingError" },
    MiniClueSeparator = { link = "DiagnosticFloatingInfo" },
    MiniClueTitle = { link = "FloatTitle" },
    MiniCompletionActiveParameter = { underline = true },
    MiniCursorword = { underline = true },
    MiniCursorwordCurrent = { underline = true },
    MiniDepsChangeAdded = { link = "ArcanumElixirGreen" },
    MiniDepsChangeRemoved = { link = "ArcanumElixirRed" },
    MiniDepsHint = { link = "DiagnosticHint" },
    MiniDepsInfo = { link = "DiagnosticInfo" },
    MiniDepsMsgBreaking = { link = "DiagnosticWarn" },
    MiniDepsPlaceholder = { link = "Comment" },
    MiniDepsTitle = { link = "Title" },
    MiniDepsTitleError = { link = "DiffDelete" },
    MiniDepsTitleSame = { link = "DiffChange" },
    MiniDepsTitleUpdate = { link = "DiffAdd" },
    MiniDiffOverAdd = { link = "DiffAdd" },
    MiniDiffOverChange = { link = "DiffText" },
    MiniDiffOverContext = { link = "DiffChange" },
    MiniDiffOverDelete = { link = "DiffDelete" },
    MiniDiffSignAdd = { link = "ArcanumElixirGreen" },
    MiniDiffSignChange = { link = "ArcanumElixirAqua" },
    MiniDiffSignDelete = { link = "ArcanumElixirRed" },
    MiniFilesBorder = { link = "FloatBorder" },
    MiniFilesBorderModified = { link = "DiagnosticFloatingWarn" },
    MiniFilesCursorLine = { bg = colors.bg2 },
    MiniFilesDirectory = { link = "Directory" },
    MiniFilesFile = { link = "ArcanumElixirFg1" },
    MiniFilesNormal = { link = "NormalFloat" },
    MiniFilesTitle = { link = "FloatTitle" },
    MiniFilesTitleFocused = { link = "ArcanumElixirOrangeBold" },
    MiniHipatternsFixme = { fg = colors.bg0, bg = colors.red, bold = config.bold },
    MiniHipatternsHack = { fg = colors.bg0, bg = colors.yellow, bold = config.bold },
    MiniHipatternsNote = { fg = colors.bg0, bg = colors.blue, bold = config.bold },
    MiniHipatternsTodo = { fg = colors.bg0, bg = colors.aqua, bold = config.bold },
    MiniIconsAzure = { link = "ArcanumElixirBlue" },
    MiniIconsBlue = { link = "ArcanumElixirBlue" },
    MiniIconsCyan = { link = "ArcanumElixirAqua" },
    MiniIconsGreen = { link = "ArcanumElixirGreen" },
    MiniIconsGrey = { link = "ArcanumElixirFg0" },
    MiniIconsOrange = { link = "ArcanumElixirOrange" },
    MiniIconsPurple = { link = "ArcanumElixirPurple" },
    MiniIconsRed = { link = "ArcanumElixirRed" },
    MiniIconsYellow = { link = "ArcanumElixirYellow" },
    MiniIndentscopeSymbol = { link = "ArcanumElixirGray" },
    MiniIndentscopeSymbolOff = { link = "ArcanumElixirYellow" },
    MiniJump = { link = "ArcanumElixirOrangeUnderline" },
    MiniJump2dDim = { link = "ArcanumElixirGray" },
    MiniJump2dSpot = { fg = colors.orange, bold = config.bold, nocombine = true },
    MiniJump2dSpotAhead = { fg = colors.aqua, bg = colors.bg0, nocombine = true },
    MiniJump2dSpotUnique = { fg = colors.yellow, bold = config.bold, nocombine = true },
    MiniMapNormal = { link = "NormalFloat" },
    MiniMapSymbolCount = { link = "Special" },
    MiniMapSymbolLine = { link = "Title" },
    MiniMapSymbolView = { link = "Delimiter" },
    MiniNotifyBorder = { link = "FloatBorder" },
    MiniNotifyNormal = { link = "NormalFloat" },
    MiniNotifyTitle = { link = "FloatTitle" },
    MiniOperatorsExchangeFrom = { link = "IncSearch" },
    MiniPickBorder = { link = "FloatBorder" },
    MiniPickBorderBusy = { link = "DiagnosticFloatingWarn" },
    MiniPickBorderText = { link = "FloatTitle" },
    MiniPickIconDirectory = { link = "Directory" },
    MiniPickIconFile = { link = "MiniPickNormal" },
    MiniPickHeader = { link = "DiagnosticFloatingHint" },
    MiniPickMatchCurrent = { bg = colors.bg2 },
    MiniPickMatchMarked = { link = "Visual" },
    MiniPickMatchRanges = { link = "DiagnosticFloatingHint" },
    MiniPickNormal = { link = "NormalFloat" },
    MiniPickPreviewLine = { link = "CursorLine" },
    MiniPickPreviewRegion = { link = "IncSearch" },
    MiniPickPrompt = { link = "DiagnosticFloatingInfo" },
    MiniStarterCurrent = { nocombine = true },
    MiniStarterFooter = { link = "ArcanumElixirGray" },
    MiniStarterHeader = { link = "Title" },
    MiniStarterInactive = { link = "Comment" },
    MiniStarterItem = { link = "Normal" },
    MiniStarterItemBullet = { link = "Delimiter" },
    MiniStarterItemPrefix = { link = "WarningMsg" },
    MiniStarterSection = { link = "Delimiter" },
    MiniStarterQuery = { link = "MoreMsg" },
    MiniStatuslineDevinfo = { link = "StatusLine" },
    MiniStatuslineFileinfo = { link = "StatusLine" },
    MiniStatuslineFilename = { link = "StatusLineNC" },
    MiniStatuslineInactive = { link = "StatusLineNC" },
    MiniStatuslineModeCommand = { fg = colors.bg0, bg = colors.yellow, bold = config.bold, nocombine = true },
    MiniStatuslineModeInsert = { fg = colors.bg0, bg = colors.blue, bold = config.bold, nocombine = true },
    MiniStatuslineModeNormal = { fg = colors.bg0, bg = colors.fg1, bold = config.bold, nocombine = true },
    MiniStatuslineModeOther = { fg = colors.bg0, bg = colors.aqua, bold = config.bold, nocombine = true },
    MiniStatuslineModeReplace = { fg = colors.bg0, bg = colors.red, bold = config.bold, nocombine = true },
    MiniStatuslineModeVisual = { fg = colors.bg0, bg = colors.green, bold = config.bold, nocombine = true },
    MiniSurround = { link = "IncSearch" },
    MiniTablineCurrent = { fg = colors.green, bg = colors.bg1, bold = config.bold, reverse = config.invert_tabline },
    MiniTablineFill = { link = "TabLineFill" },
    MiniTablineHidden = { fg = colors.bg4, bg = colors.bg1, reverse = config.invert_tabline },
    MiniTablineModifiedCurrent = {
      fg = colors.bg1,
      bg = colors.green,
      bold = config.bold,
      reverse = config.invert_tabline,
    },
    MiniTablineModifiedHidden = { fg = colors.bg1, bg = colors.bg4, reverse = config.invert_tabline },
    MiniTablineModifiedVisible = { fg = colors.bg1, bg = colors.fg1, reverse = config.invert_tabline },
    MiniTablineTabpagesection = { link = "Search" },
    MiniTablineVisible = { fg = colors.fg1, bg = colors.bg1, reverse = config.invert_tabline },
    MiniTestEmphasis = { bold = config.bold },
    MiniTestFail = { link = "ArcanumElixirRedBold" },
    MiniTestPass = { link = "ArcanumElixirGreenBold" },
    MiniTrailspace = { bg = colors.red },
    WhichKeyTitle = { link = "NormalFloat" },
    NeoTreeFloatBorder = { link = "ArcanumElixirGray" },
    NeoTreeTitleBar = { fg = colors.fg1, bg = colors.bg2 },
    NeoTreeDirectoryIcon = { link = "ArcanumElixirGreen" },
    NeoTreeDirectoryName = { link = "ArcanumElixirGreenBold" },
    ["@comment"] = { link = "Comment" },
    ["@none"] = { bg = "NONE", fg = "NONE" },
    ["@preproc"] = { link = "PreProc" },
    ["@define"] = { link = "Define" },
    ["@operator"] = { link = "Operator" },
    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { link = "Delimiter" },
    ["@punctuation.special"] = { link = "Delimiter" },
    ["@string"] = { link = "String" },
    ["@string.regex"] = { link = "String" },
    ["@string.regexp"] = { link = "String" },
    ["@string.escape"] = { link = "SpecialChar" },
    ["@string.special"] = { link = "SpecialChar" },
    ["@string.special.path"] = { link = "Underlined" },
    ["@string.special.symbol"] = { link = "Identifier" },
    ["@string.special.url"] = { link = "Underlined" },
    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },
    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },
    ["@float"] = { link = "Float" },
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Special" },
    ["@function.call"] = { link = "Function" },
    ["@function.macro"] = { link = "Macro" },
    ["@function.method"] = { link = "Function" },
    ["@method"] = { link = "Function" },
    ["@method.call"] = { link = "Function" },
    ["@constructor"] = { link = "Special" },
    ["@parameter"] = { link = "Identifier" },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.debug"] = { link = "Debug" },
    ["@keyword.directive"] = { link = "PreProc" },
    ["@keyword.directive.define"] = { link = "Define" },
    ["@keyword.exception"] = { link = "Exception" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.operator"] = { link = "ArcanumElixirRed" },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.return"] = { link = "Keyword" },
    ["@keyword.storage"] = { link = "StorageClass" },
    ["@conditional"] = { link = "Conditional" },
    ["@repeat"] = { link = "Repeat" },
    ["@debug"] = { link = "Debug" },
    ["@label"] = { link = "Label" },
    ["@include"] = { link = "Include" },
    ["@exception"] = { link = "Exception" },
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { link = "Type" },
    ["@type.definition"] = { link = "Typedef" },
    ["@type.qualifier"] = { link = "Type" },
    ["@storageclass"] = { link = "StorageClass" },
    ["@attribute"] = { link = "PreProc" },
    ["@field"] = { link = "Identifier" },
    ["@property"] = { link = "Identifier" },
    ["@variable"] = { link = "ArcanumElixirFg1" },
    ["@variable.builtin"] = { link = "Special" },
    ["@variable.member"] = { link = "Identifier" },
    ["@variable.parameter"] = { link = "Identifier" },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "Special" },
    ["@constant.macro"] = { link = "Define" },
    ["@markup"] = { link = "ArcanumElixirFg1" },
    ["@markup.strong"] = { bold = config.bold },
    ["@markup.italic"] = { link = "@text.emphasis" },
    ["@markup.underline"] = { underline = config.underline },
    ["@markup.strikethrough"] = { strikethrough = config.strikethrough },
    ["@markup.heading"] = { link = "Title" },
    ["@markup.raw"] = { link = "String" },
    ["@markup.math"] = { link = "Special" },
    ["@markup.environment"] = { link = "Macro" },
    ["@markup.environment.name"] = { link = "Type" },
    ["@markup.link"] = { link = "Underlined" },
    ["@markup.link.label"] = { link = "SpecialChar" },
    ["@markup.list"] = { link = "Delimiter" },
    ["@markup.list.checked"] = { link = "ArcanumElixirGreen" },
    ["@markup.list.unchecked"] = { link = "ArcanumElixirGray" },
    ["@comment.todo"] = { link = "Todo" },
    ["@comment.note"] = { link = "SpecialComment" },
    ["@comment.warning"] = { link = "WarningMsg" },
    ["@comment.error"] = { link = "ErrorMsg" },
    ["@diff.plus"] = { link = "diffAdded" },
    ["@diff.minus"] = { link = "diffRemoved" },
    ["@diff.delta"] = { link = "diffChanged" },
    ["@module"] = { link = "ArcanumElixirFg1" },
    ["@namespace"] = { link = "ArcanumElixirFg1" },
    ["@symbol"] = { link = "Identifier" },
    ["@text"] = { link = "ArcanumElixirFg1" },
    ["@text.strong"] = { bold = config.bold },
    ["@text.emphasis"] = { italic = config.italic.emphasis },
    ["@text.underline"] = { underline = config.underline },
    ["@text.strike"] = { strikethrough = config.strikethrough },
    ["@text.title"] = { link = "Title" },
    ["@text.literal"] = { link = "String" },
    ["@text.uri"] = { link = "Underlined" },
    ["@text.math"] = { link = "Special" },
    ["@text.environment"] = { link = "Macro" },
    ["@text.environment.name"] = { link = "Type" },
    ["@text.reference"] = { link = "Constant" },
    ["@text.todo"] = { link = "Todo" },
    ["@text.todo.checked"] = { link = "ArcanumElixirGreen" },
    ["@text.todo.unchecked"] = { link = "ArcanumElixirGray" },
    ["@text.note"] = { link = "SpecialComment" },
    ["@text.note.comment"] = { fg = colors.purple, bold = config.bold },
    ["@text.warning"] = { link = "WarningMsg" },
    ["@text.danger"] = { link = "ErrorMsg" },
    ["@text.danger.comment"] = { fg = colors.fg0, bg = colors.red, bold = config.bold },
    ["@text.diff.add"] = { link = "diffAdded" },
    ["@text.diff.delete"] = { link = "diffRemoved" },
    ["@tag"] = { link = "Tag" },
    ["@tag.attribute"] = { link = "Identifier" },
    ["@tag.delimiter"] = { link = "Delimiter" },
    ["@punctuation"] = { link = "Delimiter" },
    ["@macro"] = { link = "Macro" },
    ["@structure"] = { link = "Structure" },
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.decorator"] = { link = "@macro" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { link = "@constructor" },
    ["@lsp.type.macro"] = { link = "@macro" },
    ["@lsp.type.method"] = { link = "@method" },
    ["@lsp.type.modifier.java"] = { link = "@keyword.type.java" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { link = "@type.definition" },
    ["@lsp.type.variable"] = { link = "@variable" },

    -- NeoTreeDirectoryName = { link = "Directory" },
    -- NeoTreeDotfile = { fg = colors.fg4 },
    -- NeoTreeFadeText1 = { fg = colors.fg3 },
    -- NeoTreeFadeText2 = { fg = colors.fg4 },
    -- NeoTreeFileIcon = { fg = colors.blue },
    -- NeoTreeFileName = { fg = colors.fg1 },
    -- NeoTreeFileNameOpened = { fg = colors.fg1, bold = true },
    -- NeoTreeFileStats = { fg = colors.fg3 },
    -- NeoTreeFileStatsHeader = { fg = colors.fg2, italic = true },
    -- NeoTreeFilterTerm = { link = "SpecialChar" },
    -- NeoTreeHiddenByName = { link = "NeoTreeDotfile" },
    -- NeoTreeIndentMarker = { fg = colors.fg4 },
    -- NeoTreeMessage = { fg = colors.fg3, italic = true },
    -- NeoTreeModified = { fg = colors.yellow },
    -- NeoTreeRootName = { fg = colors.fg1, bold = true, italic = true },
    -- NeoTreeSymbolicLinkTarget = { link = "NeoTreeFileName" },
    -- NeoTreeExpander = { fg = colors.fg4 },
    -- NeoTreeWindowsHidden = { link = "NeoTreeDotfile" },
    -- NeoTreePreview = { link = "Search" },
    -- NeoTreeGitAdded = { link = "GitGutterAdd" },
    -- NeoTreeGitConflict = { fg = colors.orange, bold = true, italic = true },
    -- NeoTreeGitDeleted = { link = "GitGutterDelete" },
    -- NeoTreeGitIgnored = { link = "NeoTreeDotfile" },
    -- NeoTreeGitModified = { link = "GitGutterChange" },
    -- NeoTreeGitRenamed = { link = "NeoTreeGitModified" },
    -- NeoTreeGitStaged = { link = "NeoTreeGitAdded" },
    -- NeoTreeGitUntracked = { fg = colors.orange, italic = true },
    -- NeoTreeGitUnstaged = { link = "NeoTreeGitConflict" },
    -- NeoTreeTabActive = { fg = colors.fg1, bold = true },
    -- NeoTreeTabInactive = { fg = colors.fg4, bg = colors.bg1 },
    -- NeoTreeTabSeparatorActive = { fg = colors.bg1 },
    -- NeoTreeTabSeparatorInactive = { fg = colors.bg2, bg = colors.bg1 },
  }

  for group, hl in pairs(config.overrides) do
    if groups[group] then
      -- "link" should not mix with other configs (:h hi-link)
      groups[group].link = nil
    end

    groups[group] = vim.tbl_extend("force", groups[group] or {}, hl)
  end

  return groups
end

---@param config ArcanumElixirConfig?
ArcanumElixir.setup = function(config)
  ArcanumElixir.config = vim.tbl_deep_extend("force", ArcanumElixir.config, config or {})
end

--- main load function
ArcanumElixir.load = function()
  if vim.version().minor < 8 then
    vim.notify_once("arcanum-elixir.nvim: you must use neovim 0.8 or higher")
    return
  end

  -- reset colors
  if vim.g.colors_name then
    vim.cmd.hi("clear")
  end
  vim.g.colors_name = "arcanum-elixir"
  vim.o.termguicolors = true

  local groups = get_groups()

  -- add highlights
  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return ArcanumElixir
