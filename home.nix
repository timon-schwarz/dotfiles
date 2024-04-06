{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "schwarz";
  home.homeDirectory = "/var/home/schwarz";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    pkgs.cosign			# Containger signing CLI
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    ".config/colors/mocha.css".source 			= dotfiles/colors/mocha.css;
    ".config/colors/mocha.hypr".source 			= dotfiles/colors/mocha.hypr;

    ".config/hypr/hyprland.conf".source 		= dotfiles/hypr/hyprland.conf;		# Needs .config/colors/*.hypr
    ".config/hypr/cycle_all_workspaces.sh".source 	= dotfiles/hypr/cycle_all_workspaces.sh;
    ".config/hypr/wallpaper.png".source 		= dotfiles/hypr/wallpaper.png;
    ".config/hypr/wallpaper_blurred.png".source 	= dotfiles/hypr/wallpaper_blurred.png;

    ".config/waybar/config".source 			= dotfiles/waybar/config;
    ".config/waybar/style.css".source 			= dotfiles/waybar/style.css;		# Needs .config/colors/*.css
    ".config/waybar/scripts/dunst.sh".source 		= dotfiles/waybar/scripts/dunst.sh;

    ".config/wlogout/style.css".source 			= dotfiles/wlogout/style.css;
    ".config/wlogout/layout".source 			= dotfiles/wlogout/layout;
    ".config/wlogout/lock.png".source 			= dotfiles/wlogout/lock.png;
    ".config/wlogout/logout.png".source 		= dotfiles/wlogout/logout.png;
    ".config/wlogout/suspend.png".source 		= dotfiles/wlogout/suspend.png;
    ".config/wlogout/hibernate.png".source 		= dotfiles/wlogout/hibernate.png;
    ".config/wlogout/reboot.png".source 		= dotfiles/wlogout/reboot.png;
    ".config/wlogout/shutdown.png".source 		= dotfiles/wlogout/shutdown.png;

    ".config/swayidle/config".source 			= dotfiles/swayidle/config;

    ".config/swaylock/config".source 			= dotfiles/swaylock/config;

    ".config/kanshi/config".source 			= dotfiles/kanshi/config;
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. 
  home.sessionVariables = {
    EDITOR = "nvim";
    TERMINAL = "kitty";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
