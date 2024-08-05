{ pkgs ? import <nixpkgs>{}
, stdenv ? pkgs.stdenv
}:
stdenv.mkDerivation {
  pname = "personal-site";
  version = "0.1.0";

  src = ./src;

  buildInputs = with pkgs; [
    findutils
    gnused
    git

    hugo
    (ruby_3_3.withPackages (ps:
      with ps; [
        asciidoctor-with-extensions
        rubyPackages_3_3.rouge
      ]))
  ];

  buildPhase = ''
    hugo

    # wrap <img> tags with <a>
    find ./public/ -type f -exec \
      sed -E -i 's^(<img src="([a-zA-Z0-9.\/:_]+)" alt="([a-zA-Z0-9 ]+)"\/{0,1}>)^<a href="\2">\1</a>^g' {} \;

    ## make images load lazily
    find ./public/ -type f -exec sed -i 's#<img src#<img decoding="async" loading="lazy" src#g' {} \;
  '';

  installPhase = ''
    mkdir -p $out/var/www/com.andrewzah
    mv ./public/* $out/var/www/com.andrewzah
  '';
}
