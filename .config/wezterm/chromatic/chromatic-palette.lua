local phantom_gloom = {

	vampire_black = "#08090E",
	night_rider = "#0C0C0C",
	raisin_black = "#272121",
	outer_space = "#444444",
	sonic_silver = "#7A7A7A",
	pastel_green = "#7EED6F",
	iguana_green = "#7ABA78",
	camouflage_green = "#7D8F61",
	dark_sea_green = "#9FC088",
	jasper = "#D84040",
	deep_dumpling = "#982B1C",
	tulip = "#F18196",
	dark_salmon = "#F19A81",
	smoked_latte = "#C9AF94",
	maize = "#F9CB43",
	key_lime = "#E9F28E",
	navajo_white = "#FFE4A7",
	lavender = "#E3E6F2",
	cyber_grape = "#624E88",
	wisteria = "#8967B3",
	blue_violet = "#756AB6",
	sky_blue = "#64CCDA",
	ceil = "#90AACB",
}

return chromatic_scheme({
	background = phantom_gloom.vampire_black,
	foreground = phantom_gloom.lavender,
	cursor_bg = phantom_gloom.pastel_green,
	cursor_fg = phantom_gloom.night_rider,
	selection_bg = phantom_gloom.navajo_white,
	selection_fg = phantom_gloom.night_rider,
	split = phantom_gloom.camouflage_green,

	ansi = {
		"#0C0C0C", -- black
		"#C50F1F", -- red
		"#13A10E", -- green
		"#C19C00", -- yellow
		"#0037DA", -- blue
		"#881798", -- magenta/purple
		"#3A96DD", -- cyan
		"#CCCCCC", -- white
	},
	brights = {
		"#767676", -- black
		"#E74856", -- red
		"#16C60C", -- green
		"#F9F1A5", -- yellow
		"#3B78FF", -- blue
		"#B4009E", -- magenta/purple
		"#61D6D6", -- cyan
		"#F2F2F2", -- white
	},
	-- Since: 20220319-142410-0fcdea07
	-- When the IME, a dead key or a leader key are being processed and are effectively
	-- holding input pending the result of input composition, change the cursor
	-- to this color to give a visual cue about the compose state.
	compose_cursor = phantom_gloom.dark_salmon,

	tab_bar = {
		background = "#000000",
		active_tab = {
			bg_color = mocha.surface2,
			fg_color = mocha.text,
		},
		inactive_tab = {
			bg_color = mocha.surface0,
			fg_color = mocha.subtext1,
		},
		inactive_tab_hover = {
			bg_color = mocha.surface0,
			fg_color = mocha.text,
		},
		new_tab = {
			bg_color = mocha.base,
			fg_color = mocha.text,
		},
		new_tab_hover = {
			bg_color = mocha.mantle,
			fg_color = mocha.text,
			italic = true,
		},
	},
})
