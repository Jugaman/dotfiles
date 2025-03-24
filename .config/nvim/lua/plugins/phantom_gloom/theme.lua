return function(colors)
  return {
    -- ╔═╗┌┬┐┬┌┬┐┌─┐┬─┐  ╦ ╦╦  ╔═╗┬  ┌─┐┌┬┐┌─┐┌┐┌┌┬┐┌─┐
    -- ║╣  │││ │ │ │├┬┘  ║ ║║  ║╣ │  ├┤ │││├┤ │││ │ └─┐
    -- ╚═╝─┴┘┴ ┴ └─┘┴└─  ╚═╝╩  ╚═╝┴─┘└─┘┴ ┴└─┘┘└┘ ┴ └─┘
    -- Default text color and background
    Normal = { fg = colors.platinum, bg = colors.vampire_black },
    -- Background for non-active windows
    NormalNC = { fg = colors.platinum, bg = colors.vampire_black },
    -- Background highlight for the line with the cursor
    CursorLine = { bg = colors.night_rider },
    -- Line number for the current cursor line
    CursorLineNr = { fg = colors.pastel_green, bold = true },
    -- Default line numbers
    LineNr = { fg = colors.outer_space },
    -- Left column for signs (Git/LSP)
    SignColumn = {},
    -- Left column for fold indicators
    FoldColumn = {},
    -- Background for set colorcolumn=
    ColorColumn = {},
    -- Background for set colorcolumn=
    VertSplit = {},
    -- New window separator (Neovim 0.9+)
    WinSeparator = {},
    -- Popup menu (completion menu)
    Pmenu = {},
    -- Selected item in popup menu
    PmenuSel = {},
    -- Scrollbar thumb in popup menu
    PmenuThumb = {},
    -- Scrollbar background in popup menu
    PmenuSbar = {},
    -- Seach matches
    Search = {},
    -- highlight for incremental search
    IncSearch = {},
    -- Matching parentheses
    MatchParen = {},
    -- Active statusline
    StatusLine = { fg = colors.smokey_white, bg = colors.raisin_black, bold = true },
    -- Inactive statusline
    StatusLineNC = {},
    -- Tab bar (inactive)
    TabLine = { fg = colors.platinum, bg = colors.raisin_black },
    -- Selected tab
    TabLineSel = {},
    -- Empty space in tab bar
    TabLineFill = {},
    -- Selection in visual mode
    Visual = { bg = colors.raisin_black },
    -- Selection when :set mouse-a is disabled
    VisualNOS = {},
    -- Folders in file managers (Netrw)
    Directory = {},
    -- Command-line tab completion menu
    WildMenu = {},

    -- ╔═╗┬ ┬┌┐┌┌┬┐┌─┐─┐ ┬  ╦ ╦┬┌─┐┬ ┬┬  ┬┌─┐┬ ┬┌┬┐┬┌┐┌┌─┐
    -- ╚═╗└┬┘│││ │ ├─┤┌┴┬┘  ╠═╣││ ┬├─┤│  ││ ┬├─┤ │ │││││ ┬
    -- ╚═╝ ┴ ┘└┘ ┴ ┴ ┴┴ └─  ╩ ╩┴└─┘┴ ┴┴─┘┴└─┘┴ ┴ ┴ ┴┘└┘└─┘
    -- Comments
    Comment = { fg = colors.outer_space, italic = true },
    -- String literals
    String = { fg = colors.pastel_green },
    -- Single characters
    Character = {},
    -- Variable and function names
    Identifier = {},
    -- Function names
    Function = { fg = colors.brandeis_blue, bold = true },
    -- Keywords (if, for, while)
    Statement = {},
    -- Case labels (case, default)
    Label = {},
    -- Conditional Statement (if, switch)
    Conditional = {},
    -- Loops (for, while)
    Repeat = {},
    -- Operators (-, +, =)
    Operator = {},
    -- Exception Handling
    Exception = {},
    -- Preprocessor statements (#define, #include)
    PreProc = {},
    -- Include statements (#include, import)
    Include = {},
    -- Macros and constants
    Define = {},
    -- Macros in programming languages
    Macro = {},
    -- Storage Classes (static, extern)
    StorageClass = {},
    -- Struct and class definitions
    Structure = {},
    -- Type definitions (typedef)
    Typedef = {},
    -- Miscellaneous special elements
    Special = {},
    -- Special characters in strings
    SpecialChar = {},
    -- Tags in markup languages (HTML/XML)
    Tag = {},
    -- Delimeter (,, ;, .)
    Delimiter = {},
    -- Debugging  statements (print, log)
    Debug = {},
    -- Underlined text
    Underlined = {},
    -- Ignore text (hidden)
    Ignore = {},
    -- TODO comments (TODO, FIXME)
    -- Todo = {}.
    --Keyword = { fg = colors.dark_orchid, bold = true },
    Type = { fg = colors.wisteria },
    -- Variables
    Variable = { fg = colors.platinum },
    -- Constant like numbers, booleans
    Constant = { fg = colors.greenish_turquoise },

    -- ╦  ╔═╗╔═╗  ╔╦╗┬┌─┐┌─┐┌┐┌┌─┐┌─┐┌┬┐┬┌─┐┌─┐  ┌─┐┌┐┌┌┬┐  ╔═╗┬─┐┬─┐┌─┐┬─┐┌─┐
    -- ║  ╚═╗╠═╝   ║║│├─┤│ ┬││││ │└─┐ │ ││  └─┐  ├─┤│││ ││  ║╣ ├┬┘├┬┘│ │├┬┘└─┐
    -- ╩═╝╚═╝╩    ═╩╝┴┴ ┴└─┘┘└┘└─┘└─┘ ┴ ┴└─┘└─┘  ┴ ┴┘└┘─┴┘  ╚═╝┴└─┴└─└─┘┴└─└─┘
    -- LSP error messages
    DiagnosticError = {},
    -- LSP warning messages
    DiagnosticWarn = {},
    -- LSP hints
    DiagnosticHint = {},
    -- LSP information
    DiagnosticInfo = {},
    -- Reference text (LSP)
    LspReferenceText = {},
    -- Reference for read operations
    LspReferenceRead = {},
    -- Reference for write operations
    LspReferenceWrite = {},
    -- Active function parameter in LSP hover
    LspSignatureActiveParameter = {},
    -- Warning messages
    WarningMsg = { fg = colors.key_lime },
    -- Errors in code
    ErrorMsg = { fg = colors.ruby_red, bold = true },
    -- Informational messages
    MoreMsg = {},

    -- ╔═╗┬  ┬ ┬┌─┐┬┌┐┌┌─┐
    -- ╠═╝│  │ ││ ┬││││└─┐
    -- ╩  ┴─┘└─┘└─┘┴┘└┘└─┘
    -- Borders in Telescope
    TelescopeBorder = {},
    -- Border around prompt
    TelescopePromptBorder = {},
    -- Border around results
    TelescopeResultsBorder = {},
    -- Border around preview
    TelescopePreviewBorder = {},
    -- File explorer NvimTree
    NvimTreeNormal = {},
    -- Folder names in NvimTree
    NvimTreeFolderName = {},
    -- Opened Folders
    NvimTreeOpenedFolderName = {},
    -- Indent markers
    NvimTreeIndentMarker = {},
  }
end
