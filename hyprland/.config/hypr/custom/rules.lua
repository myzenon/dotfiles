-- Main Monitor Workspaces (1 to 8)
for i = 1, 8 do
	hl.workspace_rule({
		workspace = tostring(i),
		monitor = "DP-1",
	})
end

-- Second Monitor (Locked strictly to Workspace 9)
hl.workspace_rule({
	workspace = "9",
	monitor = "DP-2",
	default = true,
	persistent = true,
})

-- Third Monitor (Locked strictly to Workspace 10)
hl.workspace_rule({
	workspace = "10",
	monitor = "DP-3",
	default = true,
	persistent = true,
})

hl.window_rule({
	match = {
		class = ".*",
	},
	no_blur = false,
})

hl.window_rule({
	match = {
		class = "steam_app_4025700",
		title = "Heartopia",
	},
	float = true,
	center = true,
	no_blur = true,
})

hl.window_rule({
	match = {
		initial_class = "messenger",
		initial_title = "Messenger",
	},
	workspace = "special:special",
})
