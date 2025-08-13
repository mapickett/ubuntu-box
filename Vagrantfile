
Vagrant.configure(2) do |config|

    config.vm.define "basebox" do |b|
        b.vm.box = "ubuntu/jammy64"
        b.vm.disk :dvd, name: "VBGA", file: "C:\\Program Files\\Oracle\\VirtualBox\\VBoxGuestAdditions.iso"
        config.vm.provider "virtualbox" do |vb|
            vb.cpus = 4
            vb.memory = 8192
        end
        b.vm.provision :shell, :inline => "echo '/dev/sr0 /mnt iso9660 ro 0 0' >> /etc/fstab; mount -a"
        b.vm.provision :shell, :path => "setup.sh"
        b.vm.provision :reload
        b.vm.provision :shell, :inline => "do-release-upgrade -f DistUpgradeViewNonInteractive"
        b.vm.provision :reload     
    end
end
