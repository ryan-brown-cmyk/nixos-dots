-- As always, reference hypr wiki.

-- disable trackpad while typing, because I have a large and sensitive trackpad
hl.config({
	input = {
		touchpad = {
			disable_while_typing = true,
		},
	},
})

-- APPLICATION EXECS
hl.bind("SUPER + Return", hl.dsp.exec_cmd("kitty"), { description = "Launch Terminal" })
hl.bind("SUPER + B", hl.dsp.exec_cmd("firefox"), { description = "Open Firefox" }) -- CHANGE if want a different browser.
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("rofi -show drun"), { description = "Open Application Launcher" })
hl.bind("SUPER + M", hl.dsp.exec_cmd("sidra"), { description = "Open Music Player" })

-- WINDOW MANAGEMENT
hl.bind("SUPER + Q", hl.dsp.window.close(), { description = "Close Active Window" })
hl.bind("SUPER + SHIFT + H", hl.dsp.focus({ direction = "left" }), { description = "Change Active Workspace (Left)" })
hl.bind("SUPER + SHIFT + L", hl.dsp.focus({ direction = "right" }), { description = "Change Active Workspace (Right)" })
hl.bind(
	"SUPER + SHIFT + Left",
	hl.dsp.focus({ direction = "left" }),
	{ description = "Change Active Workspace (Left)" }
)
hl.bind(
	"SUPER + SHIFT + Right",
	hl.dsp.focus({ direction = "right" }),
	{ description = "Change Active Workspace (Right)" }
)

-- taken from hl wiki --
hl.config({
	binds = {
		drag_threshold = 10, -- Fire a drag event only after dragging for more than 10px
	},
})
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true, drag = true, description = "Move a Window" }) -- ALT + LMB (drag): Move a window by dragging more than 10px.
hl.bind("SUPER + mouse:272", hl.dsp.window.float(), { mouse = true, click = true, description = "Float a Window" }) -- ALT + LMB (Click): Float a window by clicking.
-- end of taken from wiki --
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true, drag = true })

hl.bind("SUPER + H", hl.dsp.window.move({ direction = "left" }), { description = "Move Window Left" })
hl.bind("SUPER + J", hl.dsp.window.move({ direction = "down" }), { description = "Move Window Down" })
hl.bind("SUPER + K", hl.dsp.window.move({ direction = "up" }), { description = "Move Window Up" })
hl.bind("SUPER + L", hl.dsp.window.move({ direction = "right" }), { description = "Move Window Right" })

hl.bind("SUPER + R", function()
	hl.dsp.window.cycle_next()
	hl.dsp.window.bring_to_top()
end, { description = "Cycle to Next Window" })

hl.bind(
	"SUPER + W",
	hl.dsp.exec_cmd("qs ipc -c overview call overview toggle"),
	{ release = true, description = "Show Workspace Overview" }
) -- REMOVE RELEASE IF WANT INTERACTIVE.

hl.bind("SUPER + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind("SUPER + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind("SUPER + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind("SUPER + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind("SUPER + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = "1" }))
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = "2" }))
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = "3" }))
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = "4" }))
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = "5" }))
hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = "6" }))
hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({ workspace = "7" }))
hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({ workspace = "8" }))
hl.bind("SUPER + SHIFT + 9", hl.dsp.window.move({ workspace = "9" }))

hl.bind("SUPER + F", hl.dsp.window.fullscreen(), { description = "Make Window Fullscreen" })
hl.bind("SUPER + SHIFT + F", hl.dsp.window.float(), { description = "Make Window Float" })

hl.bind(
	"SUPER + CONTROL + J",
	hl.dsp.window.move({ workspace = "special:magic" }),
	{ description = "Send Window to Special Workspace" }
)
hl.bind(
	"SUPER + CONTROL + SHIFT + J",
	hl.dsp.workspace.toggle_special("magic"),
	{ description = "Show Special Workspace" }
)

hl.bind("SUPER + T", function()
	local ws = hl.get_active_workspace() or "null"
	local layout = ws.tiled_layout -- Returns "dwindle", "master", "scrolling", or "monocle"
	if layout == "master" then
		hl.dsp.layout("dwindle")
	elseif layout == "dwindle" then
		hl.dsp.layout("master")
	else
		hl.dsp.layout("dwindle") -- set to toggle if it's something weird.
	end
end, { description = "Switch Between Master and Dwindle Layout" })

-- LOCK KEYBINDS
hl.bind("SUPER + CONTROL + L", hl.dsp.exec_cmd("brightnessctl -d '*::kbd_backlight' set 0% & hyprlock"))

-- VARIOUS CONTROL WEIRD KEYS
--   Audio Keys
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { description = "Skip The Current Song" })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { description = "Pause the Current Song" })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { description = "Pause the Current Song" })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { description = "Go to Previous Song" })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"))

--   Brightness Keys
hl.bind(
	"SUPER + XF86MonBrightnessDown",
	hl.dsp.exec_cmd("brightnessctl set 5%-"),
	{ description = "Decrease Monitor Brightness" }
)
hl.bind(
	"SUPER + XF86MonBrightnessUp",
	hl.dsp.exec_cmd("brightnessctl set +5%"),
	{ description = "Increase Monitor Brightness" }
)

--  SCREENSHOTS
hl.bind("SUPER + S", hl.dsp.exec_cmd("screenshootin"), { description = "Take Screenshot With screenshottin" })
-- need to add hyprshot, but that'll be soon enough!
