local phantom_gloom = {

	vampire_black = "#08090E",
	night_rider = "#0C0C0C",
	raisin_black = "#272121",
	outer_space = "#444444",
	sonic_silver = "#7A7A7A",
	pastel_green = "#7EED6F",
	iguana_green = "#7ABA78",
	dark_spring_green = "#7ABA78",
	jasper = "#D84040",
	deep_dumpling = "#982B1C",
	tulip = "#F18196",
	dark_salmon = "#F19A81",
	smoked_latte = "#C9AF94",
	maize = "#F9CB43",
	key_lime = "#E9F28E",
	navajo_white = "#FFE4A7",
	dark_purple = "#311131",
	wisteria = "#8967B3",
	dark_cerulean = "#756AB6",
	bright_navy_blue = "#117AE0",
	java = "#259797",
	sky_blue = "#64CCDA",
	ceil = "#90AACB",
	platinum = "#E4E4E3",
	smokey_white = "#F5F5F5",
}

local chromatic_scheme = {

	background = phantom_gloom.vampire_black,
	foreground = phantom_gloom.smokey_white,
	cursor_bg = phantom_gloom.pastel_green,
	cursor_fg = phantom_gloom.night_rider,
	selection_bg = phantom_gloom.navajo_white,
	selection_fg = phantom_gloom.night_rider,
	split = phantom_gloom.dark_spring_green,

	ansi = {
		"#0C0C0C", -- black (vampire_black)
		"#982B1C", -- red (deep_dumpling)
		"#176843", -- green (iguana_green)
		"#F9CB43", -- yellow (key_lime)
		"#094374", -- blue (ceil)
		"#311131", -- magenta (cyber_grape)
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
