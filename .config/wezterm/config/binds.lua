local wezterm = require("wezterm")
local action = wezterm.action

return {
	disable_default_key_bindings = true,
	keys = {

		-- ╔═╗┌─┐┌┐┌┌─┐┌─┐
		-- ╠═╝├─┤│││├┤ └─┐
		-- ╩  ┴ ┴┘└┘└─┘└─┘
		-- Split Pane
		{
			key = "Minus",
			mods = "CTRL",
			action = action.SplitPane({
				direction = "Down",
				size = { Percent = 50 },
			}),
		},
		{
			key = "|",
			mods = "CTRL|SHIFT",
			action = action.SplitPane({
				direction = "Right",
				size = { Percent = 50 },
			}),
		},

		-- Resize Pane
		{
			key = "LeftArrow",
			mods = "CTRL",
			action = action.AdjustPaneSize({ "Left", 3 }),
		},
		{
			key = "DownArrow",
			mods = "CTRL",
			action = action.AdjustPaneSize({ "Down", 3 }),
		},
		{
			key = "UpArrow",
			mods = "CTRL",
			action = action.AdjustPaneSize({ "Up", 3 }),
		},
		{
			key = "RightArrow",
			mods = "CTRL",
			action = action.AdjustPaneSize({ "Right", 3 }),
		},

		-- Close Pane
		{
			key = "q",
			mods = "CTRL",
			action = action.CloseCurrentPane({ confirm = true }),
		},

		-- Navigate Through Pane
		{
			key = "h",
			mods = "CTRL",
			action = action.ActivatePaneDirection("Left"),
		},
		{
			key = "l",
			mods = "CTRL",
			action = action.ActivatePaneDirection("Right"),
		},
		{
			key = "k",
			mods = "CTRL",
			action = action.ActivatePaneDirection("Up"),
		},
		{
			key = "j",
			mods = "CTRL",
			action = action.ActivatePaneDirection("Down"),
		},

		-- Show Pane Selection
		{
			key = "s",
			mods = "CTRL",
			action = wezterm.action.PaneSelect({}),
		},

		-- ╔═╗┬  ┬┌─┐┌┐ ┌─┐┌─┐┬─┐┌┬┐  ┌─┐┌┐┌┌┬┐  ╔═╗┌─┐┬  ┌─┐┌─┐┌┬┐┬┌─┐┌┐┌
		-- ║  │  │├─┘├┴┐│ │├─┤├┬┘ ││  ├─┤│││ ││  ╚═╗├┤ │  ├┤ │   │ ││ ││││
		-- ╚═╝┴─┘┴┴  └─┘└─┘┴ ┴┴└──┴┘  ┴ ┴┘└┘─┴┘  ╚═╝└─┘┴─┘└─┘└─┘ ┴ ┴└─┘┘└┘
		-- ╔╦╗┌─┐┌┐┌┌─┐┌─┐┌─┐┌┬┐┌─┐┌┐┌┌┬┐
		-- ║║║├─┤│││├─┤│ ┬├┤ │││├┤ │││ │
		-- ╩ ╩┴ ┴┘└┘┴ ┴└─┘└─┘┴ ┴└─┘┘└┘ ┴
		{
			key = "c",
			mods = "CTRL",
			action = action.CopyTo("ClipboardAndPrimarySelection"),
		},
		{
			key = "v",
			mods = "CTRL",
			action = action.PasteFrom("Clipboard"),
		},
		{
			key = "Space",
			mods = "CTRL",
			action = action.QuickSelect,
		},

		-- ╔╦╗┌─┐┌┐ ┌─┐
		--  ║ ├─┤├┴┐└─┐
		--  ╩ ┴ ┴└─┘└─┘
		--  Open Tab
		{
			key = "t",
			mods = "CTRL",
			action = action.SpawnTab("DefaultDomain"),
		},

		-- Close Tab
		{
			key = "q",
			mods = "CTRL|SHIFT",
			action = action.CloseCurrentTab({ confirm = true }),
		},

		-- Navigate to a specific tab
		-- Go to Tab 1
		{
			key = "1",
			mods = "CTRL",
			action = action.ActivateTab(0),
		},
		-- Go to Tab 2
		{
			key = "2",
			mods = "CTRL",
			action = action.ActivateTab(1),
		},
		-- Go to Tab 3
		{
			key = "3",
			mods = "CTRL",
			action = action.ActivateTab(2),
		},
		-- Go to Tab 4
		{
			key = "4",
			mods = "CTRL",
			action = action.ActivateTab(3),
		},
		-- Go to Tab 5
		{
			key = "5",
			mods = "CTRL",
			action = action.ActivateTab(4),
		},
		-- Go to Tab 6
		{
			key = "6",
			mods = "CTRL",
			action = action.ActivateTab(5),
		},
		-- Go to Tab 7
		{
			key = "7",
			mods = "CTRL",
			action = action.ActivateTab(6),
		},
		-- Go to Tab 8
		{
			key = "8",
			mods = "CTRL",
			action = action.ActivateTab(7),
		},
		-- Go to Tab 9
		{
			key = "9",
			mods = "CTRL",
			action = action.ActivateTab(8),
		},

		-- Navigate between tabs dynamically
		-- Next Tab
		{
			key = "Tab",
			mods = "CTRL",
			action = action.ActivateTabRelative(1),
		},
		-- Previous Tab
		{
			key = "Tab",
			mods = "CTRL|SHIFT",
			action = action.ActivateTabRelative(-1),
		},

		-- Rename Active Tab
		{
			key = "r",
			mods = "CTRL",
			action = action.PromptInputLine({
				description = "Rename Tab",
				action = wezterm.action_callback(function(window, pane, line)
					if line then
						window:active_tab():set_title(line)
					end
				end),
			}),
		},
	},
}
