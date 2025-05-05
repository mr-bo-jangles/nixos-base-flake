{username, ...}: {
  sops = {
    inherit username;
    defaultSopsFile = ../secrets/secrets.yaml;
    defaultSopsFormat = "yaml";
    age = {
      sshKeyPaths = [
        "/home/${username}/.ssh/id_ed25519"
      ];
      generateKey = true;
      keyFile = "/home/${username}/.config/sops/age/keys.txt";
    };
    secrets = {
      radarr_api_key = {};
      sonarr_api_key = {};
      "wireless/home" = {};
    };
  };
}