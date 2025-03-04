local wezterm = require("wezterm")

return {

	font = wezterm.font_with_fallback({
		{ family = "GeistMono Nerd Font" },
		{ family = "SpaceMono Nerd Font" },
		{
			family = "Noto Color Emoji",
			assume_emoji_presentation = true,
		},
	}),
	font_size = 10,
	dpi = 96,
	bold_brightens_ansi_colors = true,
	-- cursor
	default_cursor_style = "BlinkingBar",
	cursor_blink_ease_in = "Constant",
	cursor_blink_ease_out = "Constant",
	animation_fps = 1,
	-- graphical performance
	front_end = "WebGpu",
	webgpu_power_preference = "LowPower",
	enable_wayland = false,
	prefer_egl = true,

	window_decorations = "RESIZE",
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
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
