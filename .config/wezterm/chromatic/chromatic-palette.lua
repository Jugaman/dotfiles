local phantom_gloom = {

	vampire_black = "#08090E",
	night_rider = "#0C0C0C",
	raisin_black = "#272121",
	outer_space = "#444444",
	sonic_silver = "#7A7A7A",
	pastel_green = "#7EED6F",
	iguana_green = "#7ABA78",
	islamic_green = "#059212",
	jasper = "#D84040",
	ruby_red = "#FF1E1E",
	tulip = "#F18196",
	dark_orange = "#FF8F00",
	dark_salmon = "#F19A81",
	smoked_latte = "#C9AF94",
	maize = "#F9CB43",
	key_lime = "#E9F28E",
	dark_orchid = "#A31ACB",
	wisteria = "#8967B3",
	egyptian_blue = "#1230AE",
	brandeis_blue = "#117AE0",
	java = "#259797",
	sky_blue = "#64CCDA",
	aquamarine = "#6FEDD6",
	platinum = "#E4E4E3",
	smokey_white = "#F5F5F5",
}

local chromatic_scheme = {

	background = phantom_gloom.vampire_black,
	foreground = phantom_gloom.smokey_white,
	cursor_bg = phantom_gloom.pastel_green,
	cursor_fg = phantom_gloom.night_rider,
	selection_bg = phantom_gloom.key_lime,
	selection_fg = phantom_gloom.night_rider,
	split = phantom_gloom.pastel_green,

	ansi = {
		"#0C0C0C", -- black (vampire_black)
		"#D84040", -- red (jasper)
		"#059212", -- green (islamic_green)
		"#F9CB43", -- yellow (key_lime)
		"#1230AE", -- blue (egyptian_blue)
		"#8967B3", -- magenta (wisteria)
		"#64CCDA", -- cyan (sky_blue)
		"#E4E4E3", -- white (smokey_white)
	},

	brights = {
		"#272121", -- bright black (raisin_black)
		"#FF1E1E", -- bright red (ruby_red)
		"#7EED6F", -- bright green (pastel_green)
		"#E9F28E", -- bright yellow (maize)
		"#117AE0", -- bright blue (brandeis_blue)
		"#A31ACB", -- bright magenta (dark_orchid)
		"#6FEDD6", -- bright cyan (aquamarine)
		"#F5F5F5", -- bright white (platinum)
	},

	-- Since: 20220319-142410-0fcdea07
	-- When the IME, a dead key or a leader key are being processed and are effectively
	-- holding input pending the result of input composition, change the cursor
	-- to this color to give a visual cue about the compose state.
	compose_cursor = phantom_gloom.tulip,

	tab_bar = {
		background = phantom_gloom.vampire_black,

		active_tab = {
			bg_color = phantom_gloom.vampire_black,
			fg_color = phantom_gloom.pastel_green,
			intensity = "Normal",
			italic = false,
		},
		inactive_tab = {
			bg_color = phantom_gloom.vampire_black,
			fg_color = phantom_gloom.sonic_silver,
			italic = true,
		},
	},
}

return chromatic_scheme
