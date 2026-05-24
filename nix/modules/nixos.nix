# nix/modules/nixos.nix — auto-generated from pin-project-lite.caixa.lisp
# description: ""
{ config, lib, pkgs, ... }:
let
  cfg = config.services.pin-project-lite;
in {
  options.services.pin-project-lite = {
    enable = lib.mkEnableOption "pin-project-lite";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.pin-project-lite or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
