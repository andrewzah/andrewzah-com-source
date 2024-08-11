{ lib
, bundlerApp
, bundlerUpdateScript
, makeWrapper
}:
bundlerApp rec {
  pname = "asciidoctor";
  gemdir = ./.;

  exes = [
    "asciidoctor"
    "asciidoctor-epub3"
    "asciidoctor-multipage"
    "asciidoctor-pdf"
    "asciidoctor-reducer"
    "asciidoctor-revealjs"
    "asciidoctor-chart"
    "asciidoctor-mathematics"
  ];

  nativeBuildInputs = [ makeWrapper ];

  #postBuild = lib.optionalString (path != "") (lib.concatMapStrings (exe: ''
  #  wrapProgram $out/bin/${exe} \
  #    --prefix PATH : ${path}
  #'') exes);

  passthru = {
    updateScript = bundlerUpdateScript "asciidoctor-with-extensions";
  };

  meta = with lib; {
    description = "A faster Asciidoc processor written in Ruby, with many extensions enabled";
    homepage = "https://asciidoctor.org/";
    license = licenses.mit;
  };
}
