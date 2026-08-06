{
  pkgs,
  host,
  inputs,
  ...
}:
{
  imports = [
    inputs.caelestia-shell.homeManagerModules.default
  ];

  programs.caelestia = {
    enable = true;
    cli.enable = true; # Also adds caelestia-cli to path
    systemd.enable = false;

    # note that this converts to the json file under the hood
    settings = {
      bar.statusIcons = [
        {
          id = "lockStatus";
          enabled = true;
        }
        {
          id = "network";
          enabled = true;
        }
        {
          id = "bluetooth";
          enabled = true;
        }
        {
          id = "battery";
          enabled = true;
        }
      ];
      paths.wallpaperDir = "~/Pictures/Wallpapers";
      general.idle.timeouts = [
        # lock screen.
        {
          timeout = 180;
          idleAction = "lock";
          inhibitWhenAudio = false;
          inhibitWhenCharging = false;
        }
        {
          timeout = 300;
          idleAction = "wlopm --off '*'";
          inhibitWhenAudio = false;
          inhibitWhenCharging = false;
        }
        {
          timeout = 600;
          idleActuin = "systemctl suspend";
        }
      ];
    };
  };
}
