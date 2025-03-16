local wezterm = require("wezterm")
local chromatic_palette = require("chromatic.chromatic-palette")
return {

	-- ╔═╗┌─┐┬  ┌─┐┬─┐┌─┐
	-- ║  │ ││  │ │├┬┘└─┐
	-- ╚═╝└─┘┴─┘└─┘┴└─└─┘
	colors = chromatic_palette,

	-- ╔═╗┌─┐┌┐┌┌┬┐┌─┐
	-- ╠╣ │ ││││ │ └─┐
	-- ╚  └─┘┘└┘ ┴ └─┘
	font = wezterm.font_with_fallback({
		{ family = "GeistMono Nerd Font" },
		{ family = "SpaceMono Nerd Font" },
		{
			family = "Noto Color Emoji",
			assume_emoji_presentation = true,
		},
	}),
	font_size = 13,
	dpi = 96,
	bold_brightens_ansi_colors = true,

	-- ╔═╗┬ ┬┬─┐┌─┐┌─┐┬─┐
	-- ║  │ │├┬┘└─┐│ │├┬┘
	-- ╚═╝└─┘┴└─└─┘└─┘┴└─
	default_cursor_style = "BlinkingBar",
	cursor_blink_ease_in = "EaseOut",
	cursor_blink_ease_out = "EaseIn",
	animation_fps = 1,

	-- ╔═╗┬─┐┌─┐┌─┐┬ ┬┬┌─┐  ╔═╗┌─┐┬─┐┌─┐┌─┐┬─┐┌┬┐┌─┐┌┐┌┌─┐┌─┐
	-- ║ ╦├┬┘├─┤├─┘├─┤││    ╠═╝├┤ ├┬┘├┤ │ │├┬┘│││├─┤││││  ├┤
	-- ╚═╝┴└─┴ ┴┴  ┴ ┴┴└─┘  ╩  └─┘┴└─└  └─┘┴└─┴ ┴┴ ┴┘└┘└─┘└─┘
	front_end = "WebGpu",
	webgpu_power_preference = "LowPower",
	enable_wayland = false,
	prefer_egl = true,

	-- ╔╦╗┌─┐┌┐   ╔╗ ┌─┐┬─┐
	--  ║ ├─┤├┴┐  ╠╩╗├─┤├┬┘
	--  ╩ ┴ ┴└─┘  ╚═╝┴ ┴┴└─
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	tab_bar_at_bottom = false,

	-- ╔╦╗┌─┐┌─┐┌─┐┬─┐┌─┐┌┬┐┬┌─┐┌┐┌┌─┐
	--  ║║├┤ │  │ │├┬┘├─┤ │ ││ ││││└─┐
	-- ═╩╝└─┘└─┘└─┘┴└─┴ ┴ ┴ ┴└─┘┘└┘└─┘
	window_decorations = "RESIZE",
	enable_scroll_bar = false,
	scrollback_lines = 10000,
	window_close_confirmation = "AlwaysPrompt",

	window_padding = {
		left = 13,
		right = 13,
		top = 0,
		bottom = 13,
	},

	inactive_pane_hsb = {
		saturation = 0.4,
		brightness = 0.5,
	},
}
