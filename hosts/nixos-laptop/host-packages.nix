{
  configs,
  pkgs,
  inputs,
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
    rustup
    cargo
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

}
