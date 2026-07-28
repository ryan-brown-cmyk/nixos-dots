-- This is the entry point for all configs for hyprland.
-- Due to how Hyprlad uses the "require" function, it is best
-- practice to have as little as possible in this file,
-- and instead maximize the amount that you define in other files.
-- Thus, if one breaks, your entire desktop doesn't break, you
-- just go into an "emergency" mode. See the hyprwiki for more
-- information.

require("binds")
require("monitors")
require("exec-once")
-- require("animations") -- AWAITING ME DOING THIS
-- require("windowRules") -- AWAITING ME DOING THIS
-- require("env") -- Controlled by NixOS config files. This is beause it will be different per machine (ish).
