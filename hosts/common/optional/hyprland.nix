{config, pkgs, lib, ...}:
{
#environment.systemPackages = with pkgs; [egl-wayland kitty lxqt.lxqt-policykit];
programs.hyprland.enable = true; 
programs.hyprland.withUWSM = true; 
programs.niri.enable = true; 
programs.dms-shell = {
  enable = true;

  systemd = {
    enable = true;             # Systemd service for auto-start
    restartIfChanged = true;   # Auto-restart dms.service when dms-shell changes
  };
  
  # Core features
  enableSystemMonitoring = true;     # System monitoring widgets (dgop)
  enableVPN = true;                  # VPN management widget
  enableDynamicTheming = true;       # Wallpaper-based theming (matugen)
  enableAudioWavelength = true;      # Audio visualizer (cava)
  enableCalendarEvents = true;       # Calendar integration (khal)
  enableClipboardPaste = true;       # Pasting from the clipboard history (wtype)
};

services = {
  desktopManager.plasma6.enable = true;

  displayManager.sddm.enable = true;

  displayManager.sddm.wayland.enable = true;

};

environment.systemPackages = with pkgs;
  [
    # KDE
    kdePackages.discover # Optional: Install if you use Flatpak or fwupd firmware update sevice
    kdePackages.kcalc # Calculator
    kdePackages.kcharselect # Tool to select and copy special characters from all installed fonts
    kdePackages.kclock # Clock app
    kdePackages.kcolorchooser # A small utility to select a color
    kdePackages.kolourpaint # Easy-to-use paint program
    kdePackages.ksystemlog # KDE SystemLog Application
    kdePackages.sddm-kcm # Configuration module for SDDM
    kdiff3 # Compares and merges 2 or 3 files or directories
    kdePackages.isoimagewriter # Optional: Program to write hybrid ISO files onto USB disks
    kdePackages.partitionmanager # Optional: Manage the disk devices, partitions and file systems on your computer
    # Non-KDE graphical packages
    hardinfo2 # System information and benchmarks for Linux systems
    vlc # Cross-platform media player and streaming server
    wayland-utils # Wayland utilities
    wl-clipboard # Command-line copy/paste utilities for Wayland
 egl-wayland kitty lxqt.lxqt-policykit xwayland-satellite
 ];

}
