{
  description = "andrew's flake for ruby + custom gems + hugo/d2";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    ruby-nix.url = "github:inscapist/ruby-nix";
    nix2container.url = "github:nlewo/nix2container";
    bundix = {
      url = "github:inscapist/bundix/main";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    bob-ruby = {
      url = "github:bobvanderlinden/nixpkgs-ruby";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nix2container, flake-utils, nixpkgs, ruby-nix, bundix, bob-ruby, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        n2c = nix2container.packages."${system}".nix2container;
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
        env = (rubyNix { inherit gemset ruby; name = "my-rails-app"; gemConfig = pkgs.defaultGemConfig // gemConfig; }).env;
      in
      {
        packages = {
          image = n2c.buildImage {
            name = "docker.io/andrewzah/personal_site";
            tag = "latest";

            copyToRoot = let
              caddyfile = pkgs.writeTextDir "/etc/caddy/Caddyfile" (builtins.readFile ./Caddyfile);
            in
            pkgs.buildEnv {
              name = "img-root";
              paths = [
                caddyfile
                pkgs.caddy
                (pkgs.callPackage ./personal-site.nix {
                  inherit pkgs env;
                })
              ];
              pathsToLink = [ "/bin" "/etc" "/var" ];
            };

            config = {
              Cmd = [ "caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter"  "caddyfile" ];
              ExposedPorts = {
                "2020" = {};
              };
            };
          };
        };

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
              gnuplot
              mermaid-cli
            ]);
          };
        };
      }
    );
}
