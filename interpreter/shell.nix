{ sources ? import ./nix/sources.nix {}
, pkgs ? import sources.nixpkgs {}
}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    ocaml
    ocamlPackages.findlib
    ocamlPackages.batteries
    dune_3
    python3
  ];

  LC_ALL = "C.UTF-8";
  LANG = "C.UTF-8";
}
