# -*- mode: ruby -*-
# vi: set ft=ruby :
#rpms_dir="/Users/zehua/Documents/APPS/ScaleIO_2.0.0.2_Complete_Linux_SW_Download/"
rpms_dir="/Users/zehua/Documents/APPS/ScaleIO_Linux_1.latest/"
domain = 'scaleio.local'
prefix ='scaleio'
net="192.168.11"
passwd = "taocloud"
nodes = [
    {hostname: "#{prefix}-host-1", ipaddress: "#{net}.2", type: "mdm1"},
    {hostname: "#{prefix}-host-2", ipaddress: "#{net}.3", type: 'mdm2'},
    {hostname: "#{prefix}-host-3", ipaddress: "#{net}.4", type: 'tb1'},
]

Vagrant.configure("2") do |config|
    nodes.each do |node|
        config.vm.define node[:hostname] do |node_config|
            node_config.vm.box = "bento/centos-7.1"

            node_config.vm.host_name = "#{node[:hostname]}.#{domain}"

            node_config.vm.network "private_network", ip: "#{node[:ipaddress]}"
            if "#{node[:hostname]}".match(".*host-1.*")
                node_config.vm.network "public_network", ip: "192.168.1.166"
            end

            # node_config.vm.synced_folder "#{rpms_dir}", "/apps/"

            node_config.vm.provider "virtualbox" do |vb|
                vb.gui = false
                vb.memory = "400"
                vb.name="#{node[:hostname]}"
            end
            node_config.vm.provision "shell", inline: <<-SHELL
                yum install -y  numactl-devel libaio
                echo "#{passwd}"  | sudo passwd --stdin root
                sudo sed -i "s/^PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
                sudo sed -i "s/^#PermitRootLogin yes/PermitRootLogin yes/g" /etc/ssh/sshd_config
                case "$(uname -r)" in
                  *el6*)
                    service iptabels stop
                    ;;
                  *el7*)
                    systemctl disable firewalld
                    systemctl stop firewalld
                    ;;
                esac
            SHELL
        end
    end
end
