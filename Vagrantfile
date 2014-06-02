# Copyright (C) 2014  Nicolas Lamirault <nicolas.lamirault@gmail.com>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# $num_instances = 3
# $vb_gui = false
# $vb_memory = 1024
# $vb_cpus = 1
# $ip_addr_prefix = "192.168.56.10"

nodes_config = (JSON.parse(File.read("magneto.json")))['nodes']
main_config = (JSON.parse(File.read("magneto.json")))['main']

Vagrant.configure("2") do |config|

  config.vm.box = "saucy"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/saucy/current/saucy-server-cloudimg-amd64-vagrant-disk1.box"

  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true

  config.vm.provider :virtualbox do |vb|
    #vb.gui = $vb_gui
    vb.gui = main_config[':gui']
    #vb.memory = $vb_memory
    #vb.cpus = $vb_cpus
  end

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "./ansible/magneto.yml"
    ansible.inventory_path = "./ansible/cluster"
    ansible.limit = 'all'
    ansible.verbose = 'vvvv'
  end

  nodes_config.each do |vm_node|
    config.vm.define vm_node[':name'] do |node|
      node.vm.box = "saucy"
      node.vm.hostname = "Magneto%s" % vm_node[':name']
      node.vm.network :private_network, ip: "%s" % vm_node[':ip']
      node.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--memory", vm_node[':memory']]
        vb.customize ["modifyvm", :id, "--name", "Magneto%s" % vm_node[':name']]
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "off"]
        vb.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
      end
    end
  end

end
