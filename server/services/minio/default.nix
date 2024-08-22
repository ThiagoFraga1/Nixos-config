{ pkgs-stable, ... }: {
  services.minio = {
    enable = true;
    package = pkgs-stable.minio;
    dataDir = [ "/data/minio" ];
  };
}

