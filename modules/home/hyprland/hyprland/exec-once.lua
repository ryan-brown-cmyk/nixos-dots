hl.on("hyprland.start", function()
	-- hl.exec_cmd("killall -q waybar; sleep .5 && waybar")
	-- hl.exec_cmd("killall -q mako; sleep .5 && mako") -- not  needed because of caelestia
	hl.exec_cmd("qs -c overview")
	hl.exec_cmd("nm-applet --indicator")
	hl.exec_cmd("caelestia shell notifs clear") -- Could have some performance issues without this.
	hl.exec_cmd("caelestia shell -d")
end)
