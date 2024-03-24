{ pkgs ? import <nixpkgs> { } }:
pkgs.stdenv.mkDerivation (finalAttrs: {
  pname = "testPackage";
  version = "v0.0.1";

  src = ./.;

  nativeBuildInputs = [

  ];
  buildInputs = [
    pkgs.python3
  ];

  installPhase = ''
    mkdir -p $out/bin
    cp $src/main.py $out/bin/testPackage
  '';

  meta = {
    description = "A test package for nixpkgs";
    homepage = "";
    license = pkgs.lib.licenses.unlicense;
  };
})
