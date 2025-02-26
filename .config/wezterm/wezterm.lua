-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end
-- This is where you actually apply your config choices

config.font = wezterm.font_with_fallback({
	{ family = "GeistMono Nerd Font" },
	{ family = "SpaceMono Nerd Font" },
	{ family = "Noto Color Emoji" },
})
config.window_decorations = "RESIZE"
config.prefer_egl = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.enable_wayland = false
config.font_size = 10
config.enable_scroll_bar = false
config.scrollback_lines = 3000
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.window_close_confirmation = "AlwaysPrompt"

config.colors = {
	-- The default text color
	foreground = "#E3E6F2",
	-- The default background color
	background = "#08090E",

	-- Overrides the cell background color when the current cell is occupied by the
	-- cursor and the cursor style is set to Block
	cursor_bg = "#7EED6F",
	-- Overrides the text color when the current cell is occupied by the cursor
	cursor_fg = "#0C0C0C",
	-- Specifies the border color of the cursor when the cursor style is set to Block,
	-- or the color of the vertical or horizontal bar when the cursor style is set to
	-- Bar or Underline.

	-- the foreground color of selected text
	selection_fg = "#0C0C0C",
	-- the background color of selected text
	selection_bg = "#fffacd",

	-- The color of the split lines between panes
	split = "#CCE0AC",

	ansi = {
		"black",
		"maroon",
		"green",
		"olive",
		"navy",
		"purple",
		"teal",
		"silver",
	},
	brights = {
		"grey",
		"red",
		"lime",
		"yellow",
		"blue",
		"fuchsia",
		"aqua",
		"white",
	},

	-- Arbitrary colors of the palette in the range from 16 to 255
	indexed = { [136] = "#af8700" },

	-- Since: 20220319-142410-0fcdea07
	-- When the IME, a dead key or a leader key are being processed and are effectively
	-- holding input pending the result of input composition, change the cursor
	-- to this color to give a visual cue about the compose state.
	compose_cursor = "orange",

	-- Colors for copy_mode and quick_select
	-- available since: 20220807-113146-c2fee766
	-- In copy_mode, the color of the active text is:
	-- 1. copy_mode_active_highlight_* if additional text was selected using the mouse
	-- 2. selection_* otherwise
	copy_mode_active_highlight_bg = { Color = "#000000" },
	-- use `AnsiColor` to specify one of the ansi color palette values
	-- (index 0-15) using one of the names "Black", "Maroon", "Green",
	--  "Olive", "Navy", "Purple", "Teal", "Silver", "Grey", "Red", "Lime",
	-- "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
	copy_mode_active_highlight_fg = { AnsiColor = "Black" },
	copy_mode_inactive_highlight_bg = { Color = "#52ad70" },
	copy_mode_inactive_highlight_fg = { AnsiColor = "White" },

	quick_select_label_bg = { Color = "peru" },
	quick_select_label_fg = { Color = "#ffffff" },
	quick_select_match_bg = { AnsiColor = "Navy" },
	quick_select_match_fg = { Color = "#ffffff" },
}

config.window_padding = {
	left = 13,
	right = 13,
	top = 0,
	bottom = 13,
}

--binds
config.disable_default_key_bindings = true
config.keys = {
	--Splits
	{
		key = "Minus",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitPane({
			direction = "Down",
			size = { Percent = 50 },
		}),
	},
	{
		key = "|",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitPane({
			direction = "Right",
			size = { Percent = 50 },
		}),
	},
	--Resize Pane
	{
		key = "H",
		mods = "CTRL|ALT",
		action = wezterm.action.AdjustPaneSize({ "Left", 3 }),
	},
	{
		key = "J",
		mods = "CTRL|ALT",
		action = wezterm.action.AdjustPaneSize({ "Down", 3 }),
	},
	{
		key = "K",
		mods = "CTRL|ALT",
		action = wezterm.action.AdjustPaneSize({ "Up", 3 }),
	},
	{
		key = "L",
		mods = "CTRL|ALT",
		action = wezterm.action.AdjustPaneSize({ "Right", 3 }),
	},
	-- Close Pane
	{
		key = "D",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	-- Pane Navigation (CTRL + ALT + Arrow Keys)
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "c",
		mods = "CTRL",
		action = wezterm.action.CopyTo("ClipboardAndPrimarySelection"),
	},
	{
		key = "Space",
		mods = "CTRL",
		action = wezterm.action.QuickSelect,
	},
	{
		key = "v",
		mods = "CTRL",
		action = wezterm.action.PasteFrom("Clipboard"),
	},
}

-- Docs:
config.inactive_pane_hsb = {
	saturation = 0.4,
	brightness = 0.5,
}
-- and finally, return the configuration to wezterm
return config
