{ lib, fetchFromGitHub, buildHomeAssistantComponent }:

buildHomeAssistantComponent rec {

  owner = "elan-bar";
  domain = "blueiris";
  version = "1.0.19";

  src = fetchFromGitHub {
    owner = "elad-bar";
    repo = "ha-blueiris";
    rev = "e2fab8b1b7e8c9f14b331e199e0807e6c1251c88";
    hash = "sha256-v2HRcWOTTqcorF+Uvk16ZHn4REeKidnllYQlpDxrtQU=";
  };
  meta = with lib; {
    description = "HomeAssistant integration for Lcoal ";
    homepage = "https=//github.com/elad-bar/ha-blueiris";
    changelog = "https=//ha-samsung-soundbar.vercel.app/";
    maintainers = with maintainers; [ k900 ];
    license = licenses.mit;
  };

}
