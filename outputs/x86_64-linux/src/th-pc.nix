{
  # NOTE: the args not used in this file CAN NOT be removed!
  # because haumea pass argument lazily,
  # and these arguments are used in the functions like `mylib.nixosSystem`, `mylib.colmenaSystem`, etc.
  inputs
, lib
, myvars
, mylib
, system
, genSpecialArgs
, ...
} @ args:
let

  name = "th-pc";
  tags = [ name ];
  ssh-user = "root";
  base-modules = {
    nixos-modules = map mylib.relativeToRoot [
      # common
      "modules/core"
      "modules/hyprland"
      "modules/desktop"
      "modules/nvidia"

      "modules/games"
      # host specific
      "hosts/th-pc"

    ];
    home-modules = map mylib.relativeToRoot [
      "home/base/home.nix"
      "home/linux/gui/hyprland"
      "home/base/gui.nix"
    ];

  };
in
{
  nixosConfigurations.${name} = mylib.nixosSystem (base-modules // args);
  #
  # colmena.${name} =
  #   mylib.colmenaSystem (args // { inherit tags ssh-user; });
}
