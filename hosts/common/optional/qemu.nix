{config, pkgs, ...}:
{
environment.systemPackages = with pkgs; [virtiofsd]; 

#virtual machine stuff 
programs.virt-manager.enable = true;

virtualisation.libvirtd.enable = true;

virtualisation.spiceUSBRedirection.enable = true;

boot.kernelPackages = pkgs.linuxPackages_zen;
  boot.kernelParams = [
    "amd_iommu=on"
    "iommu=pt"
     "pcie_acs_override=downstream,multifunction"
    #Do not use these example vfio-pci ids, they are user-specific 
    "vfio-pci.ids=10de:2786,10de:22bc"
      ];
 services.openssh.enable = true; #enables sshd for nixos

 networking.firewall.allowedTCPPorts = [ 5900 5901 ];  # Required to open VNC ports to insall drivers

}

