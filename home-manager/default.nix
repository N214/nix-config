{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.

  nixpkgs.config.allowUnfree = true;
  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
      pkgs.argocd
      pkgs.bat
      pkgs.direnv
      pkgs.coreutils
      pkgs.croc
      pkgs.ctlptl
      pkgs.curlFull
      pkgs.fd
      pkgs.nerd-fonts.fira-code
      pkgs.fzf
      pkgs.fontconfig
      pkgs.go
      pkgs.goreleaser
      pkgs.gotop
      pkgs.gum
      pkgs.kubernetes-helm
      pkgs.kubectl
      pkgs.kubectx
      pkgs.htop
      pkgs.nerd-fonts.inconsolata
      pkgs.jq
      pkgs.kind
      pkgs.kitty
      pkgs.k9s
      pkgs.lazygit
      pkgs.lua
      #pkgs.mysql-client
      pkgs.nerdfetch
      pkgs.ngrep
      #pkgs.neovide
      pkgs.neovim
      pkgs.nnn
      pkgs.nodejs-slim_22
      pkgs.pnpm
      pkgs.pre-commit
      pkgs.ranger
      pkgs.rclone
      pkgs.ripgrep
      pkgs.shellcheck
      pkgs.terraform
      pkgs.terraform-docs
      pkgs.tilt
      pkgs.tree
      pkgs.uv
      pkgs.virtualenv
      pkgs.vivid
      pkgs.viu
      pkgs.yq-go
      pkgs.zsh
      pkgs.zsh-z
      pkgs.zsh-history
      pkgs.zsh-fzf-history-search
      pkgs.zsh-autosuggestions
      pkgs.zsh-syntax-highlighting

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    #(pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })


    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  programs.man.enable = true;
  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # You can also manage environment variables but you will have to manually
  # source
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/davish/etc/profile.d/hm-session-vars.sh
  #
  # if you don't want to manage your shell through Home Manager.
  home.sessionVariables = {
     EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
