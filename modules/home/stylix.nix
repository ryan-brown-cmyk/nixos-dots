_: {
  home.pointerCursor.enable = true;
  stylix.targets = {
    # Avoid fetching GNOME Shell sources on non-GNOME systems (breaks on some remotes)
    gnome.enable = false;
    waybar.enable = true;
    rofi.enable = false;
    hyprland.enable = true;
    hyprlock.enable = true;
    ghostty.enable = false;
    qt = {
      enable = true;
      platform = "qtct";
    };
    kitty.enable = true;
  };
}
