{ config, pkgs, lib, ...}: 
{



users.users.rat.packages = with pkgs; 
[
 monado
 xrizer 
 wivrn
 android-tools
# wlx-overlay-s
wayvr
 stardust-xr-server
 motoc
]; 



services.wivrn = {
    enable = true;
    openFirewall = true;
    defaultRuntime = true;
    autoStart = true;
    config = {
      enable = true;
      json = {

        use-steamvr-lh = true;
         bitrate = 100000000;
         scale = 0.65;
#                encoders = [
#         {
#           encoder = "nvenc";
#           codec = "h264";
#           # 1.0 x 1.0 scaling
#           width = 1.0;
#           height = 1.0;
#           offset_x = 0.0;
#           offset_y = 0.0;
#         }
#       ];
      };
    };
  };
 # services.wivrn.package = pkgs.wivrn.override { cudaSupport = true; };
  environment.systemPackages = with pkgs; [ motoc ];

} 

