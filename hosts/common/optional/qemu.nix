{config, pkgs, ...}:
{
environment.systemPackages = with pkgs; [virtiofsd]; 

#virtual machine stuff 
programs.virt-manager.enable = true;

virtualisation.libvirtd.enable = true;

virtualisation.spiceUSBRedirection.enable = true;
}

