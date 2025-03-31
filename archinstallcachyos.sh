
#addcachyrepos.sh  or #archinstallcachyos.sh

#A script to add cachyos features into Arch linux

#Howto video: https://www.youtube.com/watch?v=lOIdc99nZzg
#For more infos visit: https://wiki.cachyos.org/features/optimized_repos/



#CachyOS Team script that automates the installation of cachyos repositories to existing Arch-based installs

#This script will detect the instruction sets your CPU is capable of and install whichever version of our repositories that are the most optimized for it. It also backs up your old pacman.conf for repository removal via the script.
#For more infos visit: https://wiki.cachyos.org/features/optimized_repos/

#Caution

#Installing the CachyOS Pacman will install a forked pacman with features added from CachyOS, like “INSTALLED_FROM” and an automatic architecture check. Pacman 6.1 added a feature validation feature, which could lead when using the Arch Linux pacman into warnings. We are working with Arch Linux to provide a proper compatibility again. If you want to avoid this, don’t add the “cachyos” repository, which contains the customized pacman. All other repositories like cachyos-v3, cachyos-v4, cachyos-extra/core-v3/4 are fine to add.

#Install
curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o cachyos-repo.tar.xz
tar xvf cachyos-repo.tar.xz && cd cachyos-repo
sudo ./cachyos-repo.sh


#Uninstall
#curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o cachyos-repo.tar.xz
#tar xvf cachyos-repo.tar.xz
#cd cachyos-repo
#sudo ./cachyos-repo.sh --remove

#Run command affer repos added

#install yay
sudo pacman -S --needed base-devel git      #With the --needed flag, it will NOT reinstall the already installed packages
cd /home/$USER/Downloads
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si      #build the package
yay --version    #verify that yay has been installed successfully by checking its version.

yay cachyos kernel manager
#Choose option 1 - cachyos/cachyos-kernel-manager 1.x.y.z (1234 MiB) [cachyos]

#Video how to use kernel-manager: https://www.youtube.com/watch?v=Hz8DidPSRcQ


