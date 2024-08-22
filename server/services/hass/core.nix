{ pkgs, ... }:
{
  services.home-assistant = {
    enable = true;
    package = (pkgs.home-assistant.override {
      extraPackages = py: with py; [ grpcio psycopg2 ];
    }).overrideAttrs (oldAttrs: {
      doInstallCheck = false;
    });
    extraComponents = [
      "esphome"
      "geo_location"
      "google_assistant"
      "tuya"
      "onewire"
      "google_assistant_sdk"
      "google_translate"
      "upnp"
      "dlna_dmr"
      "manual_mqtt"
      "mqtt"
      "mqtt_eventstream"
      "mqtt_json"
      "mqtt_room"
      "mqtt_statestream"
      "met"
      "radio_browser"
      "unifiprotect"
      "unifi"
      "cast"
    ];
    config.recorder.db_url = "postgresql://@/hass";
    customLovelaceModules = with pkgs.home-assistant-custom-lovelace-modules; [
      mini-graph-card
      mushroom
      mini-media-player
    ];
    customComponents = [
      (pkgs.callPackage ../../../pkgs/home-assistant/custom_components/localtuya.nix { })
      (pkgs.callPackage ../../../pkgs/home-assistant/custom_components/blueiris.nix { })
    ];
    config = {
      default_config = { };
    };
  };
}
