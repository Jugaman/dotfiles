local wezterm = require("wezterm")

return {
	disable_default_key_bindings = true,
	keys = {

		-- ╔═╗┌─┐┬  ┬┌┬┐
		-- ╚═╗├─┘│  │ │
		-- ╚═╝┴  ┴─┘┴ ┴
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

		-- ╦═╗┌─┐┌─┐┬┌─┐┌─┐  ╔═╗┌─┐┌┐┌┌─┐
		-- ╠╦╝├┤ └─┐│┌─┘├┤   ╠═╝├─┤│││├┤
		-- ╩╚═└─┘└─┘┴└─┘└─┘  ╩  ┴ ┴┘└┘└─┘
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

		-- ╔═╗┬  ┌─┐┌─┐┌─┐  ╔═╗┌─┐┌┐┌┌─┐
		-- ║  │  │ │└─┐├┤   ╠═╝├─┤│││├┤
		-- ╚═╝┴─┘└─┘└─┘└─┘  ╩  ┴ ┴┘└┘└─┘
		{
			key = "D",
			mods = "CTRL|SHIFT",
			action = wezterm.action.CloseCurrentPane({ confirm = true }),
		},

		-- ╔═╗┌─┐┌┐┌┌─┐  ╔╗╔┌─┐┬  ┬┬┌─┐┌─┐┌┬┐┬┌─┐┌┐┌
		-- ╠═╝├─┤│││├┤   ║║║├─┤└┐┌┘││ ┬├─┤ │ ││ ││││
		-- ╩  ┴ ┴┘└┘└─┘  ╝╚╝┴ ┴ └┘ ┴└─┘┴ ┴ ┴ ┴└─┘┘└┘
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
	},
}
