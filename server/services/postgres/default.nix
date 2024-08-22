{ pkgs, config, ... }: {
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_16_jit;
    enableTCPIP = true;

    ensureDatabases = [ "hass" ];
    ensureUsers = [{
      name = "hass";
      ensureDBOwnership = true;
    }];
    authentication = pkgs.lib.mkOverride 10 ''
       local all       all     trust
      host    all             all             127.0.0.1/0            trust
      host    all             all             0.0.0.0/0            md5
      host    replication     all             0.0.0.0/0               md5
    '';
    settings = {
      # ssl = true;
      wal_level = "replica";
      max_wal_senders = 5;

    };
    dataDir = "/data/postgresql/16";
  };
}
