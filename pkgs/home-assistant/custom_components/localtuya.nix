{ lib, fetchFromGitHub, buildHomeAssistantComponent }:

buildHomeAssistantComponent rec {

  owner = "rospogrigio";
  domain = "localtuya";
  version = "4.1.0";

  src = fetchFromGitHub {
    owner = "rospogrigio";
    repo = "localtuya";
    rev = "87d61eea6f4189bf1dc01614534e1fff84db4a7f"; # Substitua pela versão mais recente ou especificada.
    sha256 = "sha256-GexGUu4hevRDGF7gv7Jklr5YZJV+QH3kZN7p+eK9HlM="; # Substitua pelo valor correto ou obtenha-o usando nix-prefetch-git.
  };
  meta = with lib; {
    description = "HomeAssistant integration for Lcoal ";
    homepage = "https://ha-samsung-soundbar.vercel.app/";
    changelog = "https://github.com/samuelspagl/ha_samsung_soundbar/releases/tag/${version}";
    maintainers = with maintainers; [ k900 ];
    license = licenses.mit;
  };

}
