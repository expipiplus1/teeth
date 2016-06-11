{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "teeth";
  version = "0.2.0.1";
  src = ./.;
  libraryHaskellDepends = [ base ];
  homepage = "https://github.com/expipiplus1/teeth";
  description = "Dental data types";
  license = stdenv.lib.licenses.mit;
}
