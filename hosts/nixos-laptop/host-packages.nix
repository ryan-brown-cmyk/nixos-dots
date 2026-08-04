{
  configs,
  pkgs,
  inputs,
  config,
  ...
}:
{

  environment.systemPackages = with pkgs; [
    #  Add local pacakaged here
    gcc
    discord
    obs-studio
    vimPlugins.LazyVim
    nodejs
    inputs.sidra.packages.${system}.default
    cargo
    rust-analyzer
    rustfmt
    rustc
    ddcutil
    libreoffice-qt
    hunspell
    zathura
    zoom-us
    zulu
    mako # notification daemon
    (prismlauncher.override {
      additionalPrograms = [ ];
      jdks = [
        #graalvm.graalvm-ce
        zulu8
        zulu17
        zulu
      ];
    })
    # prism config taken from nixos wiki
  ];
  programs.nix-ld.enable = true;
  programs.zoom-us.enable = true;

  # Add host specific flatpaks here
  services = {
    flatpak = {
      packages = [
      ];
    };
  };

  services.auto-cpufreq.enable = false;
  services.auto-cpufreq.settings = {
    battery = {
      governor = "powersave";
      turbo = "never";
    };
    charger = {
      governor = "performance";
      turbo = "auto";
    };
  };
  # The below is so we can have a formatted list to prune ZaneyOS easier.
  environment.etc."current-system-packages".text =
    let
      packages = builtins.map (p: "${p.name}") config.environment.systemPackages;
      sortedUnique = builtins.sort builtins.lessThan (pkgs.lib.lists.unique packages);
      formatted = builtins.concatStringsSep "\n" sortedUnique;
    in
    formatted;
}
