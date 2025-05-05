{...}: {
  sops = {
    secrets = {
      "wireless/home" = {};
    };
  };
  networking.networkmanager.enable = lib.mkDefault true;

  networking.networkmanager.ensureProfiles = {
    secrets.entries = [
      {
        file = config.sops.secrets."wireless/home".path;
        key = "psk";
        matchId = "BT-XGCJCH";
        matchSetting = "psk";
        matchType = "wifi-security";
      }
    ];
    profiles = {
      BT-XGCJCH = {
        connection = {
          id = "BT-XGCJCH";
          permissions = "";
          type = "wifi";
        };
        ipv4 = {
          dns-search = "";
          method = "auto";
        };
        ipv6 = {
          addr-gen-mode = "stable-privacy";
          dns-search = "";
          method = "auto";
        };
        wifi = {
          mac-address-blacklist = "";
          mode = "infrastructure";
          ssid = "Home Wi-Fi";
        };
        wifi-security = {
          auth-alg = "open";
          key-mgmt = "wpa-psk";
        };
      };
    };
  };

#  networking.wireless.secretsFile = config.sops.secrets."wireless/home".path;
#  networking.wireless.networks = {
#    "BT-XGCJCH" = {
#      psk = "ext:home_psk";
#    };
#  };
}