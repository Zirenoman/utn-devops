# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Box base: Ubuntu 22.04
  config.vm.box = "ubuntu/jammy64"

  # Redireccionar puerto 80 de la VM al 8080 del host
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # Mapear la carpeta del proyecto al directorio /vagrant en la VM
  config.vm.synced_folder ".", "/vagrant"

  # Provisioning script
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update -y
    sudo apt-get install -y apache2 git
    sudo rm -rf /var/www/html/*
    sudo git clone https://github.com/Fichen/utn-devops-app.git /var/www/html
    sudo systemctl restart apache2
    sudo systemctl enable apache2
  SHELL
end
