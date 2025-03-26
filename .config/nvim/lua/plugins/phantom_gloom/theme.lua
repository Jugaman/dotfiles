--  /$$$$$$$  /$$                             /$$
-- | $$__  $$| $$                            | $$
-- | $$  \ $$| $$$$$$$   /$$$$$$  /$$$$$$$  /$$$$$$    /$$$$$$  /$$$$$$/$$$$
-- | $$$$$$$/| $$__  $$ |____  $$| $$__  $$|_  $$_/   /$$__  $$| $$_  $$_  $$
-- | $$____/ | $$  \ $$  /$$$$$$$| $$  \ $$  | $$    | $$  \ $$| $$ \ $$ \ $$
-- | $$      | $$  | $$ /$$__  $$| $$  | $$  | $$ /$$| $$  | $$| $$ | $$ | $$
-- | $$      | $$  | $$|  $$$$$$$| $$  | $$  |  $$$$/|  $$$$$$/| $$ | $$ | $$
-- |__/      |__/  |__/ \_______/|__/  |__/   \___/   \______/ |__/ |__/ |__/
--   /$$$$$$  /$$
--  /$$__  $$| $$
-- | $$  \__/| $$  /$$$$$$   /$$$$$$  /$$$$$$/$$$$
-- | $$ /$$$$| $$ /$$__  $$ /$$__  $$| $$_  $$_  $$
-- | $$|_  $$| $$| $$  \ $$| $$  \ $$| $$ \ $$ \ $$
-- | $$  \ $$| $$| $$  | $$| $$  | $$| $$ | $$ | $$
-- |  $$$$$$/| $$|  $$$$$$/|  $$$$$$/| $$ | $$ | $$
--  \______/ |__/ \______/  \______/ |__/ |__/ |__/

-- Neovim Highlighting groups Docs:   https://neovim.io/doc/user/syntax.html#highlight-groups
-- Check these sections using :help:
-- General Highlighting:             :help highlight-groups
-- Diagnostics (LSP-related):        :help diagnostic-highlights
-- LSP Highlights:                   :help lsp-highlight
-- Git & Diffs:                      :help diff

return function(colors)
  return {
    -- ╔═╗┌┬┐┬┌┬┐┌─┐┬─┐  ╦ ╦╦  ╔═╗┬  ┌─┐┌┬┐┌─┐┌┐┌┌┬┐┌─┐
    -- ║╣  │││ │ │ │├┬┘  ║ ║║  ║╣ │  ├┤ │││├┤ │││ │ └─┐
    -- ╚═╝─┴┘┴ ┴ └─┘┴└─  ╚═╝╩  ╚═╝┴─┘└─┘┴ ┴└─┘┘└┘ ┴ └─┘
    -- Background for set colorcolumn
    ColorColumn = { bg = colors.raisin_black },
    -- Background highlight for the line with the cursor
    CursorLine = { bg = colors.night_rider },
    -- Line number for the current cursor line
    CursorLineNr = { fg = colors.pastel_green, bold = true },
    -- Folders in file managers (Netrw)
    Directory = { fg = colors.platinum, bold = true },
    -- Left column for fold indicators
    FoldColumn = { bg = colors.vampire_black, fg = colors.outer_space },
    -- highlight for incremental search
    IncSearch = { bg = colors.deep_saffron, fg = colors.night_rider, bold = true },
    -- Default line numbers
    LineNr = { fg = colors.outer_space },
    -- Matching parentheses
    MatchParen = { bg = colors.dark_orchid, fg = colors.smokey_white, bold = true },
    -- Default text color and background
    Normal = { fg = colors.platinum, bg = colors.vampire_black },
    -- Background for non-active windows
    NormalNC = { fg = colors.platinum, bg = colors.vampire_black },
    -- Popup menu (completion menu)
    Pmenu = { bg = colors.raisin_black, fg = colors.platinum },
    -- Scrollbar background in popup menu
    PmenuSbar = { bg = colors.outer_space },
    -- Selected item in popup menu
    PmenuSel = { bg = colors.greenish_turquoise, fg = colors.night_rider },
    -- Scrollbar thumb in popup menu
    PmenuThumb = { bg = colors.pastel_green },
    -- Seach matches
    Search = { bg = colors.corn, fg = colors.raisin_black, bold = true },
    -- Left column for signs (Git/LSP)
    SignColumn = { bg = colors.vampire_black, fg = colors.outer_space },
    -- Active statusline
    StatusLine = { fg = colors.smokey_white, bg = colors.raisin_black, bold = true },
    -- Inactive statusline
    StatusLineNC = { bg = colors.raisin_black, fg = colors.outer_space },
    -- Tab bar (inactive)
    TabLine = { fg = colors.platinum, bg = colors.raisin_black },
    -- Empty space in tab bar
    TabLineFill = { bg = colors.vampire_black },
    -- Selected tab
    TabLineSel = { bg = colors.brandeis_blue, fg = colors.smokey_white, bold = true },
    -- New window separator (Neovim 0.9+)
    VertSplit = { fg = colors.outer_space },
    -- Selection in visual mode
    Visual = { bg = colors.raisin_black },
    -- Selection when :set mouse-a is disabled
    VisualNOS = { bg = colors.raisin_black },
    -- Command-line tab completion menu
    WildMenu = { bg = colors.brandeis_blue, fg = colors.night_rider, bold = true },
    -- Window Separator
    WinSeparator = { fg = colors.pastel_green },

    -- ╔═╗┬ ┬┌┐┌┌┬┐┌─┐─┐ ┬  ╦ ╦┬┌─┐┬ ┬┬  ┬┌─┐┬ ┬┌┬┐┬┌┐┌┌─┐
    -- ╚═╗└┬┘│││ │ ├─┤┌┴┬┘  ╠═╣││ ┬├─┤│  ││ ┬├─┤ │ │││││ ┬
    -- ╚═╝ ┴ ┘└┘ ┴ ┴ ┴┴ └─  ╩ ╩┴└─┘┴ ┴┴─┘┴└─┘┴ ┴ ┴ ┴┘└┘└─┘
    -- Docs: https://neovim.io/doc/user/syntax.html
    -- Any Comment
    Comment = { fg = colors.outer_space, italic = true },

    -- Any Constant
    Constant = { fg = colors.corn },
    -- String constant
    String = { fg = colors.key_lime },
    -- Character constants
    Character = { fg = colors.maize },
    -- Number Constant
    Number = { fg = colors.phlox },
    -- Boolean Constant
    Boolean = { fg = colors.tulip },
    -- Float Constant
    Float = { fg = colors.phlox },

    -- Any variable name
    Identifier = { fg = colors.ruby_red },
    -- Function names
    Function = { fg = colors.islamic_green, bold = true },

    -- Any Statement
    Statement = { fg = colors.celeste },
    -- Conditional Statement (if, switch, then, else, endif, etc.)
    Conditional = { fg = colors.celeste },
    -- Loops (for, do, while, etc.)
    Repeat = { fg = colors.celeste },
    -- Case labels (case, default, etc.)
    Label = { fg = colors.celeste },
    -- Operators ("sizeof", "+", "*", etc.)
    Operator = { fg = colors.folly },
    -- Any other Keyword
    Keyword = { fg = colors.dark_orange, bold = true },
    -- Exception Handling (try, catch ,throw)
    Exception = { fg = colors.corn, bold = true },

    -- Generic Preprocessor
    PreProc = { fg = colors.deep_saffron },
    -- Preprocessor #include
    Include = { fg = colors.deep_saffron },
    -- Preprocessor #define
    Define = { fg = colors.deep_saffron },
    -- same as Define
    Macro = { fg = colors.deep_saffron },
    -- Preprocessor #if, #else, #endif, etc.
    PreCondit = { fg = colors.deep_saffron },

    -- int, long, char, etc.
    Type = { fg = colors.pastel_green, bold = true },
    -- Storage Classes (static, register, volatile,etc.)
    StorageClass = { fg = colors.dark_orange, italic = true },
    -- struct, union, enum, etc.
    Structure = { fg = colors.tulip },
    -- A typedef
    Typedef = { fg = colors.folly },

    -- Any special Symbol
    Special = { fg = colors.light_aqua },
    -- Special character in a constant
    SpecialChar = { fg = colors.folly },
    -- You can use CTRL-] on this
    Tag = { fg = colors.greenish_turquoise },
    -- Character that needs attention
    Delimiter = { fg = colors.pastel_green },
    -- Special things inside a comment
    SpecialComment = { fg = colors.outer_space },
    -- Debugging statements (print, log)
    Debug = { fg = colors.ruby_red, bold = true },

    -- Text that stands out, HTML links
    Underlined = { fg = colors.egyptian_blue, underline = true },

    -- Ignore text (hidden)
    Ignore = { fg = colors.raisin_black },

    -- Any erroneous construct
    Error = { fg = colors.ruby_red },

    -- TODO comments (TODO, FIXME)
    Todo = { fg = colors.corn, bold = true, italic = true },

    -- ╦  ╔═╗╔═╗  ╔╦╗┬┌─┐┌─┐┌┐┌┌─┐┌─┐┌┬┐┬┌─┐┌─┐  ┌─┐┌┐┌┌┬┐  ╔═╗┬─┐┬─┐┌─┐┬─┐┌─┐
    -- ║  ╚═╗╠═╝   ║║│├─┤│ ┬││││ │└─┐ │ ││  └─┐  ├─┤│││ ││  ║╣ ├┬┘├┬┘│ │├┬┘└─┐
    -- ╩═╝╚═╝╩    ═╩╝┴┴ ┴└─┘┘└┘└─┘└─┘ ┴ ┴└─┘└─┘  ┴ ┴┘└┘─┴┘  ╚═╝┴└─┴└─└─┘┴└─└─┘
    -- Errors in code
    ErrorMsg = { bg = colors.vampire_black, fg = colors.ruby_red, bold = true },
    -- LSP error messages
    DiagnosticError = { bg = colors.vampire_black, fg = colors.ruby_red, bold = true },
    -- LSP hints
    DiagnosticHint = { bg = colors.vampire_black, fg = colors.pale_cyan },
    -- LSP information
    DiagnosticInfo = { bg = colors.vampire_black, fg = colors.light_aqua },
    -- LSP warning messages
    DiagnosticWarn = { bg = colors.vampire_black, fg = colors.corn, bold = true },
    -- Reference text (LSP)
    LspReferenceText = {},
    -- Reference for read operations
    LspReferenceRead = {},
    -- Reference for write operations
    LspReferenceWrite = {},
    -- Active function parameter in LSP hover
    LspSignatureActiveParameter = {},
    -- Informational messages
    MoreMsg = { fg = colors.java },
    -- Warning messages
    WarningMsg = { fg = colors.key_lime },

    -- ╔═╗┬  ┬ ┬┌─┐┬┌┐┌┌─┐
    -- ╠═╝│  │ ││ ┬││││└─┐
    -- ╩  ┴─┘└─┘└─┘┴┘└┘└─┘
    -- File explorer NeoTree
    NeoTreeNormal = { bg = colors.vampire_black, fg = colors.platinum },
    -- Inactive file explorer NeoTree
    NeoTreeNormalNC = { bg = colors.vampire_black, fg = colors.platinum },
    -- Folder names in NeoTree
    NeoTreeFolderName = { fg = colors.brandeis_blue, bold = true },
    -- Indent markers
    NeoTreeIndentMarker = { fg = colors.outer_space },
    -- Opened folders
    NeoTreeOpenedFolderName = { fg = colors.greenish_turquoise, bold = true },
    -- File explorer NvimTree
    NvimTreeNormal = { bg = colors.vampire_black, fg = colors.platinum },
    -- Inactive file explorer NvimTree
    NvimTreeNormalNC = { bg = colors.vampire_black, fg = colors.platinum },
    -- Folder names in NeoTree
    NvimTreeFolderName = { fg = colors.brandeis_blue, bold = true },
    -- NvimTree Indent markers
    NvimTreeIndentMarker = { fg = colors.outer_space },
    -- NvimTree Opened Folders
    NvimTreeOpenedFolderName = { fg = colors.greenish_turquoise, bold = true },
    -- Borders in Telescope
    TelescopeBorder = { bg = colors.vampire_black, fg = colors.outer_space },
    -- Border around preview
    TelescopePreviewBorder = { bg = colors.vampire_black, fg = colors.outer_space },
    -- Border around prompt
    TelescopePromptBorder = { bg = colors.vampire_black, fg = colors.outer_space },
    -- Border around results
    TelescopeResultsBorder = { bg = colors.vampire_black, fg = colors.outer_space },

    -- ╔═╗┬┌┬┐  ┌─┐┌┐┌┌┬┐  ╦  ╦┌─┐┬─┐┌─┐┬┌─┐┌┐┌  ╔═╗┌─┐┌┐┌┌┬┐┬─┐┌─┐┬
    -- ║ ╦│ │   ├─┤│││ ││  ╚╗╔╝├┤ ├┬┘└─┐││ ││││  ║  │ ││││ │ ├┬┘│ ││
    -- ╚═╝┴ ┴   ┴ ┴┘└┘─┴┘   ╚╝ └─┘┴└─└─┘┴└─┘┘└┘  ╚═╝└─┘┘└┘ ┴ ┴└─└─┘┴─┘
    -- Added lines in Git
    GitSignsAdd = { bg = colors.vampire_black, fg = colors.pastel_green },
    -- Changed lines in Git
    GitSignsChange = { bg = colors.vampire_black, fg = colors.dark_orange },
    -- Deleted lines in Git
    GitSignsDelete = { bg = colors.vampire_black, fg = colors.ruby_red },
    -- Added lines in diffs
    DiffAdd = { fg = colors.pastel_green },
    -- Changed lines in diffs
    DiffChange = { fg = colors.dark_orange },
    -- Deleted lines in diffs
    DiffDelete = { fg = colors.ruby_red },
    -- Changed lines in diffs (highlighted text)
    DiffText = { bg = colors.pale_cyan, fg = colors.night_rider, bold = true },
  }
end
