hl.bind(
	"CTRL+SUPER+ALT+Slash",
	hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"),
	{ description = "Edit user keybinds" }
)

local mainModPlus = "ALT + "

hl.unbind("ALT + F4")
hl.bind("ALT + F4", hl.dsp.window.close(), { description = "Window: Close" })

-- Mouse Drag/Resize
hl.bind(mainModPlus .. "mouse:272", hl.dsp.window.drag(), { mouse = true, description = "Window: Move" })
hl.bind(mainModPlus .. "mouse:274", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainModPlus .. "mouse:273", hl.dsp.window.resize(), { mouse = true, description = "Window: Resize" })

-- Quickshell & Global Binds
hl.bind(mainModPlus .. "SPACE", hl.dsp.global("quickshell:searchToggleRelease"), { repeating = false })
hl.bind(
	mainModPlus .. "CTRL + V",
	hl.dsp.global("quickshell:overviewClipboardToggle"),
	{ description = "Clipboard history >> clipboard" }
)
hl.bind("SUPER + Period", hl.dsp.global("quickshell:overviewEmojiToggle"), { description = "Emoji >> clipboard" })

hl.bind(mainModPlus .. "A", hl.dsp.global("quickshell:sidebarLeftToggle"), { description = "Toggle left sidebar" })
hl.bind(mainModPlus .. "N", hl.dsp.global("quickshell:sidebarRightToggle"), { description = "Toggle right sidebar" })
hl.bind(mainModPlus .. "Slash", hl.dsp.global("quickshell:cheatsheetToggle"), { description = "Toggle cheatsheet" })
hl.bind(mainModPlus .. "M", hl.dsp.global("quickshell:mediaControlsToggle"), { description = "Toggle media controls" })
hl.bind(mainModPlus .. "O", hl.dsp.global("quickshell:regionOcr"))

hl.bind(
	"CTRL + SHIFT + 4",
	hl.dsp.exec_cmd(
		"qs -p ~/.config/quickshell/$qsConfig/screenshot.qml || pidof slurp || hyprshot --freeze --clipboard-only --mode region --silent"
	),
	{ description = "Screen snip" }
)

-- Window split ratio
hl.bind(mainModPlus .. "Semicolon", hl.dsp.layout("splitratio -0.1"), { repeating = true })
hl.bind(mainModPlus .. "Apostrophe", hl.dsp.layout("splitratio +0.1"), { repeating = true })

-- Positioning mode
hl.bind(mainModPlus .. "V", hl.dsp.window.float({ action = "toggle" }), { description = "Float/Tile" })
hl.bind(
	mainModPlus .. "D",
	hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }),
	{ description = "Maximize" }
)
hl.bind(
	mainModPlus .. "F",
	hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }),
	{ description = "Fullscreen" }
)
hl.bind(mainModPlus .. "Backslash", hl.dsp.layout("togglesplit"))

-- Focus in direction (Vim keys)
hl.bind(mainModPlus .. "H", hl.dsp.focus({ direction = "l" }))
hl.bind(mainModPlus .. "L", hl.dsp.focus({ direction = "r" }))
hl.bind(mainModPlus .. "K", hl.dsp.focus({ direction = "u" }))
hl.bind(mainModPlus .. "J", hl.dsp.focus({ direction = "d" }))

-- Workspaces & Scratchpad
hl.bind(mainModPlus .. "W", hl.dsp.exec_cmd("~/.config/hypr/hyprland/scripts/workspace_action.sh workspace 10"))
hl.bind(mainModPlus .. "P", hl.dsp.exec_cmd("~/.config/hypr/hyprland/scripts/workspace_action.sh workspace 11"))

-- Scratchpad / Special Workspace
hl.bind(
	mainModPlus .. "SHIFT + S",
	hl.dsp.window.move({ workspace = "special", follow = false }),
	{ description = "Send to scratchpad" }
)
hl.bind(mainModPlus .. "S", hl.dsp.workspace.toggle_special("special"))

-- Apps
hl.bind(
	mainModPlus .. "T",
	hl.dsp.exec_cmd(
		[[~/.config/hypr/hyprland/scripts/launch_first_available.sh "$TERMINAL" "kitty -1" "foot" "alacritty" "wezterm" "konsole" "kgx" "uxterm" "xterm"]]
	),
	{ description = "Terminal" }
)
hl.bind(
	mainModPlus .. "E",
	hl.dsp.exec_cmd(
		[[~/.config/hypr/hyprland/scripts/launch_first_available.sh "nautilus" "dolphin" "nemo" "thunar" "$TERMINAL" "kitty -1 fish -c yazi"]]
	),
	{ description = "File manager" }
)
hl.bind(
	mainModPlus .. "B",
	hl.dsp.exec_cmd(
		[[~/.config/hypr/hyprland/scripts/launch_first_available.sh "zen-browser" "google-chrome-stable" "firefox" "brave" "chromium" "microsoft-edge-stable" "opera" "librewolf"]]
	),
	{ description = "Browser" }
)
