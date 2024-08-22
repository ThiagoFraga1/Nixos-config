{ pkgs, ... }: {
  systemd.services.cloudflared = {
    enable = true;
    wantedBy = [ "default.target" ];
    after = [ "network-online.target" ];
    serviceConfig = {
      EnvironmentFile = "/data/cloudflare.env";
      ExecStart = "${pkgs.bash}/bin/bash -c '${pkgs.cloudflared}/bin/cloudflared tunnel --no-autoupdate run --token=$CLOUDFLARED_TOKEN'";
      Restart = "always";
      User = "lin";
    };
  };
}
