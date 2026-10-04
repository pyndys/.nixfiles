{ inputs, ... }:
{
  networking = {
    stevenblack = {
      enable = true;
      block = [
        "fakenews"
        "gambling"
        "porn"
      ];
    };

    hostFiles = [ "${inputs.geohide}/hosts/hosts" ];

    ## osu!lazer map downloading fix from https://github.com/Flowseal/zapret-discord-youtube/discussions/8819
    hosts."77.223.98.115" = [
      "spectator.osu.ppy.sh"
      "m1.ppy.sh"
      "m2.ppy.sh"
      "m3.ppy.sh"
      "bm11.osu.ppy.sh"
      "bm14.osu.ppy.sh"
    ];
  };
}
