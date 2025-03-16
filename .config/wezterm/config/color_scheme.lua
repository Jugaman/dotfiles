return {

	colors = {

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
		split = "#7d8f61",

		ansi = {
			"#0C0C0C", -- black (vampire_black)
			"#982B1C", -- red (deep_dumpling)
			"#176843", -- green (iguana_green,)
			"#F9CB43", -- yellow (key_lime)
			"#094374", -- blue (ceil)
			"#311131", -- magenta (cyber_grape,)
			"#259797", -- cyan (java)
			"#E4E4E3", -- white (smokey_white)
		},

		brights = {
			"#272121", -- bright black (raisin_black)
			"#D84040", -- bright red (jasper)
			"#7EED6F", -- bright green (pastel_green)
			"#E9F28E", -- bright yellow (maize)
			"#117AE0", -- bright blue (bright_navy_blue)
			"#8967B3", -- bright magenta (wisteria)
			"#64CCDA", -- bright cyan (sky_blue)
			"#F5F5F5", -- bright white (platinum)
		},

		-- Arbitrary colors of the palette in the range from 16 to 255

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
		quick_select_match_bg = { AnsiColor = "White" },
		quick_select_match_fg = { Color = "#ffffff" },
	},
}
