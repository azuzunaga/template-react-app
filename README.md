# A simple template to get a React app going

If you don't have Nix installed, install it:

```sh
curl https://nixos.org/nix/install | sh
```

Install direnv if you don't have it yet:

```sh
nix-env -i direnv
```

To install all dependencies `cd` into the repository and run `direnv allow`. That's it!

## Why?

I wanted my very own template React app with the settings I love to use. I use Nix as a package manager to keep my environment clean. Learn more about Nix [here](https://nixos.org/nix/about.html).

## How?

I use Parcel as a bundler. Babel, ESLint, Prettier, and Jest configs are each in their own file. The included CSS file uses system fonts by default and has a pretty simple reset.

The app can be easily extended with Redux, Styled Components, etc.!

## Adding new modules

To add new modules do the following:

```sh
direnv deny
rm -rf node_modules
yarn add <package>
yarn2nix > yarn.nix
direnv allow
```

## Troubleshooting

Running `direnv reload` will fix most problems. If not, try:

```sh
direnv deny
rm -rf node_modules
direnv allow
```
