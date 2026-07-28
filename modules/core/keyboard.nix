{
  lib,
  pkgs,
  inputs,
  ...
}:
{

  services.keyd = {
    enable = true;
    keyboards.default = {
      ids = [ "*" ];
      settings.main = {
        capslock = "esc";
      };
    };
  };
}
