{ pkgs
, pkgs-unstable
, ...
}: {
  home.packages = with pkgs; [
    waybar # the status bar
    swaybg # the wallpaper
    swayidle # the idle timeout
    swaylock # locking the screen
    wlogout # logout menu
    wl-clipboard # copying and pasting
    hyprpicker # color picker
    alacritty
    wofi
    localsend
    vesktop
    bitwarden-desktop
    bitwarden-cli

    telegram-desktop
    kdePackages.kdeconnect-kde
    electron-mail
    obsidian
    cliphist
    freerdp3

    spotify
    obs-studio

    pkgs-unstable.hyprshot # screen shot
    grim # taking screenshots
    slurp # selecting a region to screenshot
    wf-recorder # screen recording
    alacritty
    mako # the notiication daemon, the same as dunst

    yad # a fork of zenity, for creating dialogs

    # audio
    alsa-utils # provides amixer/alsamixer/...
    mpd # for playing system sounds
    mpc-cli # command-line mpd client
    ncmpcpp # a mpd client with a UI
    networkmanagerapplet # provide GUI app: nm-connection-editor
  ];
}
