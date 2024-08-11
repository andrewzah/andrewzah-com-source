{
  description = "andrew's flake for ruby + custom gems + hugo/d2";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    ruby-nix.url = "github:inscapist/ruby-nix";
    bundix = {
      url = "github:inscapist/bundix/main";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    bob-ruby = {
      url = "github:bobvanderlinden/nixpkgs-ruby";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, flake-utils, nixpkgs, ruby-nix, bundix, bob-ruby }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ bob-ruby.overlays.default ];
        };
        rubyNix = ruby-nix.lib pkgs;
        gemset = if builtins.pathExists ./gemset.nix then import ./gemset.nix else { };
        gemConfig = {};

        # see: https://github.com/bobvanderlinden/nixpkgs-ruby/blob/master/ruby/versions.json
        ruby = pkgs."ruby-3.1.6";
        bundixCLI = bundix.packages."${system}".default;

        # Use these instead of the original `bundle <mutate>` commands
        bundleLock = pkgs.writeShellScriptBin "bundle-lock" ''
          export BUNDLE_PATH=vendor/bundle
          bundle lock
        '';
        bundleUpdate = pkgs.writeShellScriptBin "bundle-update" ''
          export BUNDLE_PATH=vendor/bundle
          bundle lock --update
        '';
      in
      rec {
        inherit (rubyNix {
          inherit gemset ruby; name = "my-rails-app";
          gemConfig = pkgs.defaultGemConfig // gemConfig;
          })
          env;

        devShells = rec {
          default = dev;
          dev = pkgs.mkShell {
            buildInputs = [
              env
              bundixCLI
              bundleLock
              bundleUpdate
            ] ++ (with pkgs; [
              hugo
              d2
              texliveSmall
              texlivePackages.mathfont
              texlivePackages.fontsetup
            ]);
          };
        };
      }
    );
}
