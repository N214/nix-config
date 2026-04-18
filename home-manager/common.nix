{ config, pkgs, ... }:

{
  home.packages = [
    # Shared CLI Tools
    pkgs.argocd
    pkgs.bat
    pkgs.direnv
    pkgs.coreutils
    pkgs.croc
    pkgs.ctlptl
    pkgs.curlFull
    pkgs.fd
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
    pkgs.jq
    pkgs.kind
    pkgs.k9s
    pkgs.lazygit
    pkgs.lua
    pkgs.nerdfetch
    pkgs.ngrep
    pkgs.neovim
    pkgs.nnn
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
    pkgs.zsh-fzf-history-search
    pkgs.zsh-autosuggestions
    pkgs.zsh-syntax-highlighting
    
    # Restored CLI Tools
    pkgs.nodejs_22
    pkgs.tmux
    pkgs.ffmpeg
    pkgs.bitwarden-cli
    pkgs.blueutil
    pkgs.htop

    # Tools moved from darwin.nix for cross-platform availability
    pkgs.duckdb
    pkgs.just
    pkgs.gemini-cli-bin
    pkgs.kconf
    pkgs.pandoc
  ];

  programs.man.enable = true;

  home.sessionVariables = {
     EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
