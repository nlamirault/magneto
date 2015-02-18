# Copyright (C) 2014, 2015 Nicolas Lamirault <nicolas.lamirault@gmail.com>

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

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

COREOS_CHANNEL = "alpha"
COREOS_VERSION = "509.0.0"

BOX_NAME = "magneto-#{COREOS_CHANNEL}"
BOX_URL = "http://#{COREOS_CHANNEL}.release.core-os.net/amd64-usr/current/coreos_production_vagrant.json"


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  onfig.vm.box = "#{BOX_NAME}"
  config.vm.box_url = "#{BOX_URL}"
  config.vm.hostname = "Magneto"
  config.vm.network :private_network, :ip => '10.9.8.7'

  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true

  config.vm.provider :virtualbox do |vb|
    #vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "off"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
    vb.name = "Magneto"
  end

  config.vm.provision :file,
                      :source => "units/mesos-master.service",
                      :destination => "/etc/systemd/system/mesos-master.service"
  config.vm.provision :file,
                      :source => "units/mesos-slave.service",
                      :destination => "/etc/systemd/system/mesos-slave.service"
  config.vm.provision :file,
                      :source => "units/marathon.service",
                      :destination => "/etc/systemd/system/marathon.service"
  config.vm.provision :file,
                      :source => "units/zookeeper.service",
                      :destination => "/etc/systemd/system/zookeeper.service"
  config.vm.provision :shell,
                      :inline => "fleetctl start /etc/systemd/system/zookeeper.service",
                      :privileged => true
  config.vm.provision :shell,
                      :inline => "fleetctl start /etc/systemd/system/mesos-master.service",
                      :privileged => true
  config.vm.provision :shell,
                      :inline => "fleetctl start /etc/systemd/system/mesos-slave.service",
                      :privileged => true
  config.vm.provision :shell,
                      :inline => "fleetctl start /etc/systemd/system/marathon.service",
                      :privileged => true

end
