# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Box base: Ubuntu 22.04
  config.vm.box = "ubuntu/jammy64"

  # Redireccionar puerto 8080 del guest al 8080 del host (acceso por localhost:8080)
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  # Red privada para acceso por IP (192.168.56.10:8080)
  config.vm.network "private_network", ip: "192.168.56.10"

  # Mapear la carpeta del proyecto al directorio /vagrant en la VM
  config.vm.synced_folder ".", "/vagrant"

  # Provisioning script externo
  config.vm.provision "shell", path: "unidad-2-docker/Vagrant.bootstrap.sh"

  # Config opcional para que la VM use más recursos
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end
end
