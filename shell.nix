{ nixpkgs ? import <nixpkgs> {}
, compiler ? "default"
, withHoogle ? false
}:

let

  inherit (nixpkgs) pkgs;

  packageSet = if compiler == "default"
                 then pkgs.haskellPackages
                 else pkgs.haskell.packages.${compiler};

  haskellPackages =
    if withHoogle
      then packageSet.override {
             overrides = (self: super: {
               ghc = super.ghc // { withPackages = super.ghc.withHoogle; };
               ghcWithPackages = self.ghc.withPackages;
             });
           }
      else packageSet;

  f = import ./default.nix;

  drv = haskellPackages.callPackage f {};

in

  drv.env

