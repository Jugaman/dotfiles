local phantom_gloom = {
	vampire_black = "#08090E",
	night_rider = "#0C0C0C",
	raisin_black = "#272121",
	outer_space = "#444444",
	platinum = "#E4E4E3",
	smokey_white = "#F5F5F5",
	islamic_green = "#059212",
	pastel_green = "#7EED6F",
	greenish_turquoise = "#00FF9C",
	ruby_red = "#FF1E1E",
	jasper = "#D84040",
	folly = "#FF004D",
	tulip = "#F18196",
	dark_orange = "#FF8F00",
	deep_saffron = "#FB9A40",
	maize = "#F9CB43",
	corn = "#FAEF5D",
	key_lime = "#E9F28E",
	dark_orchid = "#A31ACB",
	phlox = "#E900FF",
	wisteria = "#8967B3",
	egyptian_blue = "#1230AE",
	brandeis_blue = "#117AE0",
	celeste = "#51EAEA",
	light_aqua = "#94FFD8",
	pale_cyan = "#B6FFFA",
}

local chromatic_scheme = {
	background = phantom_gloom.vampire_black,
	foreground = phantom_gloom.smokey_white,

	-- ╔═╗┬ ┬┬─┐┌─┐┌─┐┬─┐
	-- ║  │ │├┬┘└─┐│ │├┬┘
	-- ╚═╝└─┘┴└─└─┘└─┘┴└─
	cursor_bg = phantom_gloom.pastel_green,
	cursor_fg = phantom_gloom.night_rider,
	compose_cursor = phantom_gloom.tulip,

	-- ╔═╗┌─┐┬  ┌─┐┌─┐┌┬┐┬┌─┐┌┐┌
	-- ╚═╗├┤ │  ├┤ │   │ ││ ││││
	-- ╚═╝└─┘┴─┘└─┘└─┘ ┴ ┴└─┘┘└┘
	selection_bg = phantom_gloom.key_lime,
	selection_fg = phantom_gloom.night_rider,

	-- ╔═╗┌─┐┌┐┌┌─┐┌─┐
	-- ╠═╝├─┤│││├┤ └─┐
	-- ╩  ┴ ┴┘└┘└─┘└─┘
	split = phantom_gloom.pastel_green,

	-- ╔═╗╔╗╔╔═╗╦  ╔═╗┌─┐┬  ┌─┐┬─┐┌─┐
	-- ╠═╣║║║╚═╗║  ║  │ ││  │ │├┬┘└─┐
	-- ╩ ╩╝╚╝╚═╝╩  ╚═╝└─┘┴─┘└─┘┴└─└─┘
	ansi = {
		"#0C0C0C", -- black (vampire_black)
		"#D84040", -- red (jasper)
		"#059212", -- green (islamic_green)
		"#F9CB43", -- yellow (maize)
		"#1230AE", -- blue (egyptian_blue)
		"#8967B3", -- magenta (wisteria)
		"#51EAEA", -- cyan (celeste)
		"#E4E4E3", -- white (smokey_white)
	},

	brights = {
		"#272121", -- bright black (raisin_black)
		"#FF1E1E", -- bright red (ruby_red)
		"#00FF9C", -- bright green (greenish_turquoise)
		"#FAEF5D", -- bright yellow (corn)
		"#117AE0", -- bright blue (brandeis_blue)
		"#E900FF", -- bright magenta (phlox)
		"#B6FFFA", -- bright cyan (pale_cyan)
		"#F5F5F5", -- bright white (platinum)
	},

	-- ╔╦╗┌─┐┌┐   ╔╗ ┌─┐┬─┐
	--  ║ ├─┤├┴┐  ╠╩╗├─┤├┬┘
	--  ╩ ┴ ┴└─┘  ╚═╝┴ ┴┴└─
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
			fg_color = phantom_gloom.outer_space,
			italic = true,
		},
		inactive_tab_hover = {
			bg_color = phantom_gloom.pastel_green,
			fg_color = phantom_gloom.vampire_black,
			italic = true,
		},
		new_tab = {
			bg_color = phantom_gloom.vampire_black,
			fg_color = phantom_gloom.pastel_green,
		},
		new_tab_hover = {
			bg_color = phantom_gloom.pastel_green,
			fg_color = phantom_gloom.vampire_black,
		},
	},
}

return chromatic_scheme
