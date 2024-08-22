{ pkgs, ... }: {
  home.packages = with pkgs; [
    pcmanfm
    xdg-desktop-portal-hyprland

  ];
}
