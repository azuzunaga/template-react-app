{ pkgs ? import ./z/etc/lib/nixpkgs.nix }:
let
  pkg = import ./. { inherit pkgs; };
in pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs
    yarn
    yarn2nix
    python
    pkg
  ];

  src = ./.;

  shellHook = ''
    export TEMPLATE_REACT_APP_ROOT="${pkg.outPath}"
    export TEMPLATE_REACT_APP_NODE_MODULES="${pkg.node_modules}"
    if [ -f .env ]; then
      source .env
    fi
    declare node_modules_path="$PWD/node_modules"
    if [ -d "$node_modules_path" ] && [ ! -L "$node_modules_path" ]; then
      [ -d "$node_modules_path.bak" ] && rm -rf "$node_modules_path.bak"
      mv "$node_modules_path" "$node_modules_path.bak"
    fi
    rm -rf $node_modules_path
    ln -sf "$TEMPLATE_REACT_APP_NODE_MODULES" "$node_modules_path"
    unset node_modules_path
  '';
}
