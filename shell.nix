let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/archive/dd457de7e08c6d06789b1f5b88fc9327f4d96309.tar.gz";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
pkgs.mkShellNoCC {
  packages = with pkgs; [
    hugo

    (ruby_3_3.withPackages (ps:
      with ps; [
        asciidoctor-with-extensions
        rubyPackages_3_3.rouge
      ]))
  ];
}
