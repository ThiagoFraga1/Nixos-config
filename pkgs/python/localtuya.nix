{ config, pkgs-stable, ... }:

let
  pkgs = pkgs-stable;
  localtuya = pkgs.fetchFromGitHub {
    owner = "rospogrigio";
    repo = "localtuya";
    rev = "87d61eea6f4189bf1dc01614534e1fff84db4a7f"; # Substitua pela versão mais recente ou especificada.
    sha256 = "sha256-GexGUu4hevRDGF7gv7Jklr5YZJV+QH3kZN7p+eK9HlM="; # Substitua pelo valor correto ou obtenha-o usando nix-prefetch-git.
  };
in
pkgs.buildPythonPackage rec {
  pname = "localtuya";
  version = "0.1.0"; # Substitua pela versão correta, se aplicável

  src = localtuya;

  # Dependências do pacote Python


  propagatedBuildInputs = with pkgs.python3Packages; [
    tinytuya
    aiohttp
    pycryptodome
  ];
  meta = with pkgs.lib; {
    description = "Nix derivation for the localtuya Python package.";
    homepage = "https://github.com/rospogrigio/localtuya";
    license = licenses.mit;
    maintainers = [ maintainers.fnxln ];
  };
}

