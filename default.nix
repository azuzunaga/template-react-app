{ pkgs ? import ./z/etc/lib/nixpkgs.nix }:
import ./package.nix {
  inherit (pkgs) mkYarnPackage;
}
