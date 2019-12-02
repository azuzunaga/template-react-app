{ mkYarnPackage }:
mkYarnPackage {
  name = "template-react-app";
  src = ./.;
  packageJson = ./package.json;
  yarnLock = ./yarn.lock;
  yarnNix = ./yarn.nix;
}
