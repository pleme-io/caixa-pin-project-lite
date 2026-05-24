# nix/modules/home-manager.nix — auto-generated from pin-project-lite.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.pin-project-lite; in {
  options.programs.pin-project-lite = {
    enable = lib.mkEnableOption "pin-project-lite";
    package = lib.mkOption { type = lib.types.package; default = pkgs.pin-project-lite or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
