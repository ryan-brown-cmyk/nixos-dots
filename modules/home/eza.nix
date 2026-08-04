# Eza is a ls replacement
{
  programs.eza = {
    enable = true;
    icons = "auto";
    enableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
    git = true;

    extraOptions = [
      "--group-directories-first"
      "--no-quotes"
      "--header" # Show header row
      #"--git-ignore"
      "--icons=always"
      # "--time-style=long-iso" # ISO 8601 extended format for time
      "--classify" # append indicator (/, *, =, @, |)
      "--hyperlink" # make paths clickable in some terminals
    ];
  };
  # Aliases to make `ls`, `ll`, `la` use eza
  home.shellAliases = {
    ls = "eza --hyperlink=auto";
    lt = "eza --hyperlink=auto --tree --level=2";
    ll = "eza  --hyperlink=auto -lh --no-user --long";
    la = "eza -lah --hyperlink=auto";
    tree = "eza --tree ";
  };
}
