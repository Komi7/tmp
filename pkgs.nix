#
#  Bspwm configuration
#

{ config, lib, pkgs, ... }:

# "${pkgs.xorg.xrandr}/bin/xrandr --mode 1920x1080 --pos 0x0 --rotate normal"
{
#  programs.dconf.enable = true;

#  services = {
#    xserver = {
#      enable = true;

#      layout = "us";                              # Keyboard layout & €-sign
   #   xkbOptions = "eurosign:e";
#      libinput = {
#        enable = true;
#        touchpad = {
#          tapping = true;
#          scrollMethod = "twofinger";
#          naturalScrolling = true;                # The correct way of scrolling
#          accelProfile = "adaptive";              # Speed settings
#          #accelSpeed = "-0.5";
#          disableWhileTyping = true;
#        };
#      };
    #  modules = [ pkgs.xf86_input_wacom ];        # Both needed for wacom tablet usage
    #  wacom.enable = true;

#      displayManager = {                          # Display Manager
#        lightdm = {
#         enable = true;                          # Wallpaper and GTK theme
#          background = pkgs.nixos-artwork.wallpapers.nineish-dark-gray.gnomeFilePath;
#          greeters = {
#            gtk = {
#              theme = {
#                name = "Dracula";
#                package = pkgs.dracula-theme;
#              };
#              cursorTheme = {
#                name = "Dracula-cursors";
#                package = pkgs.dracula-theme;
#                size = 16;
#              };
#            };
#          };
#        };
#        defaultSession = "none+bspwm";            # none+bspwm -> no real display manager
#     };
#      windowManager= {
#        bspwm = {                                  # Window Manager
#          enable = true;
#        };
#      };
#
#
      #Drivers for AMD GPU
      #videoDrivers = [                           # Video Settings
        #"amdgpu"
      #];

 #     displayManager.sessionCommands = monitor;

      #Desktop w/ AMD GPU
      #displayManager.sessionCommands = ''
        #!/bin/sh
        
        #SCREEN=$(${pkgs.xorg.xrandr}/bin/xrandr | grep " connected " | wc -l)
        #if [[ $SCREEN -eq 1 ]]; then
        #  ${pkgs.xorg.xrandr}/bin/xrandr --output HDMI-A-1 --primary --mode 1920x1080 --rotate normal
        #elif [[ $SCREEN -eq 2 ]]; then
        #  ${pkgs.xorg.xrandr}/bin/xrandr --output HDMI-A-1 --primary --mode 1920x1080 --rotate normal --output DisplayPort-1 --mode 1920x1080 --rotate normal --left-of HDMI-A-1
        #elif [[ $SCREEN -eq 3 ]]; then
        #  ${pkgs.xorg.xrandr}/bin/xrandr --output HDMI-A-1 --primary --mode 1920x1080 --rotate normal --output DisplayPort-1 --mode 1920x1080 --rotate normal --left-of HDMI-A-1 --output HDMI-A-0 --mode 1280x1024 --rotate normal --right-of HDMI-A-1
        #fi
      #'';                                        # Settings for correct display configuration; This can also be done with setupCommands when X server start for smoother transition (if setup is static)
                                                  # Another option to research in future is arandr
#      serverFlagsSection = ''
#        Option "BlankTime" "0"
#        Option "StandbyTime" "0"
#        Option "SuspendTime" "0"
#        Option "OffTime" "0"
#      '';                                         # Used so computer does not goes to sleep

#      resolutions = [
#        { x = 1920; y = 1080; }
     #   { x = 1600; y = 900; }
     #   { x = 3840; y = 2160; }
#      ];
#    };
#  };
#  services.picom.enable = true;
  programs.zsh.enable = true;    # Weirdly needs to be added to have default user on lightdm
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.syntaxHighlighting.enable = true;
  programs.zsh.autosuggestions.enable = true;
  programs.starship.enable = true;
#  programs.steam.enable = true;
  # enable ff2mpv native meesaging hosts
  programs.firefox.nativeMessagingHosts.ff2mpv = true;
  environment.systemPackages = with pkgs; [       # Packages installed
    nerdfonts
    tldr
    xfce.tumbler
    ffmpegthumbnailer
    bat
    mpv
    mesa
    lxappearance
    pcmanfm
#    udisks2
    gvfs
#    xtitle
    android-tools
    btop
    cmatrix
    copyq
    dunst
    feh
    gdu
    gimp
#    gnome.gnome-disk-utility
    neofetch
    ntfs3g
    qbittorrent
    lf
    kitty #only for lf image preview
    ripgrep
    tldr
    chromium
    fish
#    cloudflare-warp
#ARCHIVE
    zip
    unzip
    gzip
    p7zip
    xarchiver
    killall
    variety
    numlockx
    nitrogen
    python3Full
# screenshot & video rec
    obs-studio
#    libsForQt5.kdenlive
    glaxnimate
    mediainfo
# VPN
#TERMINAL
    alacritty
    xterm
    wezterm
#ZSH
    fnm
    zsh-syntax-highlighting
    lsd
    exa
    starship
#PDF view-reader
    sioyek
#CODE
    neovim
    geany
    vscodium
  #  jetbrains.pycharm-community
#LAUNCHER
    rofi-wayland
    wofi
#SHOUSUKE FVT
    obsidian
    bettercap
    betterlockscreen
    slides
    scrcpy
#VIRTUAL BOX
    qemu
    virt-manager
    libvirt 
    virt-viewer 
    dnsmasq 
    vde2 
    ebtables 
    libguestfs
    bridge-utils
#chat-desktop-application
    betterdiscordctl
    discord-canary
    tdesktop
#Ranger File
    file
    unrar
    w3m
    jq
    fmt
#Hyprland
    waybar
    wezterm
    colord
    swaybg
    swaylock
    wlsunset
    wlogout
    gnome.gnome-keyring
    wf-recorder
    dunst
    sway-contrib.grimshot
    libsForQt5.qtstyleplugin-kvantum
    rsync
  ];

#remove for gnome-full desktop environment install 
#  xdg.portal = {                                  # Required for flatpak with window managers
#    enable = true;
#    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
#  };   # if gnome not install unmark to use pkgs.xda

}
