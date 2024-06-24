let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/archive/dd457de7e08c6d06789b1f5b88fc9327f4d96309.tar.gz";
  pkgs = import nixpkgs { config = {}; overlays = []; };

  caddyfile = pkgs.writeTextDir "/etc/caddy/Caddyfile" (builtins.readFile ./Caddyfile);
in
rec {
  img = pkgs.dockerTools.buildImage {
    name = "docker.io/andrewzah/personal_site";
    tag = "latest";

    copyToRoot = pkgs.buildEnv {
      name = "img-root";
      paths = with pkgs; [
        caddy
        caddyfile

        (pkgs.callPackage ./personal-site.nix {})
      ];
    };

    config = {
      Cmd = [ "caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter"  "caddyfile" ];
    };
  };
}
