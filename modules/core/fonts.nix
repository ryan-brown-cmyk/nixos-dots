{ pkgs, ... }: {
  fonts = {
    packages = with pkgs; [
      dejavu_fonts
      fira-code
      fira-code-symbols
      font-awesome
      hackgen-nf-font
      ibm-plex
      inter
      jetbrains-mono
      material-icons # not sure this is legal, but we'll see!
      maple-mono.NF
      minecraftia
      nerd-fonts.im-writing
      nerd-fonts.blex-mono
      nerd-fonts.iosevka-term
      nerd-fonts.lilex
      nerd-fonts.ubuntu
      nerd-fonts.jetbrains-mono
      nerd-fonts.fira-mono
      noto-fonts
      noto-fonts-color-emoji
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-monochrome-emoji
      powerline-fonts
      roboto
      roboto-mono
      symbola
      terminus_font
      nerd-fonts.symbols-only
    ];

    fontconfig = {
      enable = true;
      hinting.enable = true;
      subpixel.rgba = "rgb";
      defaultFonts = {
        serif = [ "ibm-plex" ];
        sansSerif = [ "roboto" ];
        monospace = [
          "nerd-fonts.blexmono"
          "Symbols Nerd Font"
        ];
      };
    };
  };
}
