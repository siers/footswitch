{ stdenv, pkgconfig, hidapi }:

stdenv.mkDerivation {
  name = "footswitch";
  src = ./.;
  nativeBuildInputs = [ pkgconfig ];
  buildInputs = [ hidapi ];
  PREFIX = "$out";

  installPhase = ''
    mkdir -p $out/bin
    cp footswitch scythe $out/bin
  '';
}
