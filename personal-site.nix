{ pkgs
, env
}:
pkgs.stdenv.mkDerivation {
  pname = "personal-site";
  version = "0.1.0";

  src = ./src;

  nativeBuildInputs = (with pkgs; [
    findutils
    gnused
    git
    hugo
    d2
    gnuplot
  ]) ++ [ env ];

  buildPhase = ''
    # remove draft pages
    pushd ./content
    grep -rl "draft = true" | while read f; do rm "$f"; done
    popd

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
