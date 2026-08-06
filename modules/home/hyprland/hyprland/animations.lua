-- As per usual, reference the hyprland wiki.
-- This file will have both the generael look, as well as the animations.

hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 10,
		border_size = 2,
	},
	decoration = {
		rounding = 15,
		active_opacity = 1.0,
		inactive_opacity = 0.9,
		shadow = { enabled = true, range = 4, color = "rgba(111111ee)" },
	},
})

-- animations:
hl.curve("bez-one", { type = "bezier", points = { { 0.25, 0.14 }, { 0.96, 0.0 } } })

hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 1,
	bezier = "bez-one",
	style = "gnomed",
})
