{ ... }: {
  services.vaultwarden = {
    enable = true;
    dbBackend = "postgresql";
    environmentFile = /data/vaultwarden.env;
  };
}
