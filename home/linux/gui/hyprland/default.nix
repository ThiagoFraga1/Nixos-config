{ pkgs
, config
, lib
, anyrun
, ...
} @ args:
{
  imports = [ ./options ./values ];
  home.file.".config/hypr" = {
    source = ./conf;
    recursive = true;
  };

}
