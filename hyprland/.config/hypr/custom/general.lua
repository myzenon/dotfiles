hl.monitor({
	output = "DP-1",
	mode = "5120x2880@75",
	scale = "2",
	position = "0x0",
	supports_hdr = 1,
	icc = "/home/zenon/dotfiles/displaycal/Kuycon G27P/G27P #1 2026-07-24 16-10 2.2 F-S XYZLUT+MTX.icm",
})
hl.monitor({
	output = "DP-2",
	scale = "2",
	position = "-1920x-800",
	icc = "/home/zenon/dotfiles/displaycal/LG UltraFine/UltraFine #1 2026-07-24 17-22 2.2 F-S XYZLUT+MTX.icm",
})
hl.monitor({
	output = "DP-3",
	scale = "1.25",
	position = "2560x-176",
	icc = "/home/zenon/dotfiles/displaycal/LG SDQHD/SDQHD #1 2026-07-24 16-43 2.2 F-S XYZLUT+MTX.icm",
})

hl.config({
	input = {
		kb_layout = "us,th",
		kb_options = "grp:caps_toggle",
		numlock_by_default = true,
		repeat_delay = 200,
		follow_mouse = 0,
		touchpad = {
			natural_scroll = false,
		},
	},
	general = {
		gaps_in = 4,
		gaps_out = {
			top = 16,
			left = 24,
			right = 24,
			bottom = 24,
		},
		gaps_workspaces = 50,
		border_size = 1,

		col = {
			active_border = "rgba(ffffff99)",
			inactive_border = "rgba(31313600)",
		},
	},
	decoration = {
		blur = {
			enabled = true,
			vibrancy_darkness = 0.05,
		},
		active_opacity = 0.95,
		inactive_opacity = 0.95,
	},
})
