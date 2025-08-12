
Vagrant.configure(2) do |config|

    config.vm.define "basebox" do |b|
        b.vm.box = "ubuntu/jammy64"
        #b.vm.disk :dvd, name: "VBGA", file: "C:\\Program Files\\Oracle\\VirtualBox\\VBoxGuestAdditions.iso"
        b.vm.cloud_init content_type: "text/cloud-config",
            inline: <<-EOF
            package_update: true
            package_upgrade: true
            packages:
                - [bzip2, tar, gcc, make, perl]
            ssh_pwauth: True
            EOF
        # b.vm.provision :shell, :path => "setup.sh"
        # b.vm.provision :reload
        # b.vm.provision :shell, :inline => "do-release-upgrade -f DistUpgradeViewNonInteractive"     
    end
end
