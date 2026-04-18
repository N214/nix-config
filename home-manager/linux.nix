{ config, pkgs, lib, ... }:

lib.mkIf pkgs.stdenv.hostPlatform.isLinux {
  home.packages = [
    # Linux-specific user packages can be added here
  ];
}
