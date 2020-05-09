# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# Инструкция:
# Все настройки Vagrantfile должны выполняться исключительно через box MACHINES
# остальные разделы  конфигураций неприкосновенны, это сделано для автоматизации и упрощения чтения файлов
#
# конфигурация машины указывается через переменные "machine_"
#
# Provision: все провижн файлы для каждой машины должны располагаться в папке с именем самой виртуальной машины
#
# Agafonov Andrey, 2020
# @mailto: aagafonov@inbox.ru
#

# Определяем список машин ддя развертывания
MACHINES = {

    ##########CER
    :cerlegolas => {
      :box_name => "centos/7",
      :ip_addr => '172.20.1.15',
      :machine_cpu => '1',
      :machine_memory => '256',
      },
    :certauriel => {
      :box_name => "centos/7",
      :ip_addr => '172.20.1.16',
      :machine_cpu => '1',
      :machine_memory => '256',
      },
    :certranduil => {
      :box_name => "centos/7",
      :ip_addr => '172.20.1.17',
      :machine_cpu => '1',
      :machine_memory => '256',
      },

      ####kibana:
    :kibanaelrond => {
      :box_name => "centos/7",
      :ip_addr => '172.20.1.210',
      :machine_cpu => '1',
      :machine_memory => '2048',
      },

    ###haproxy:
    :haproxyradagast => {
      :box_name => "centos/7",
      :ip_addr => '172.20.1.10',
      :machine_cpu => '1',
      :machine_memory => '512',
      },
    :haproxygendalf => {
      :box_name => "centos/7",
      :ip_addr => '172.20.1.11',
      :machine_cpu => '1',
      :machine_memory => '512',
      },

###gluster:
  :glusterbilbo => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.41',
    :machine_cpu => '1',
    :machine_memory => '512',
    },
  :glusterfrodo => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.42',
    :machine_cpu => '1',
    :machine_memory => '512',
    },

###config
  :mdbtorin => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.20',
    :machine_cpu => '1',
    :machine_memory => '512',
    },
  :mdbbalin => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.21',
    :machine_cpu => '1',
    :machine_memory => '512',
    },
  :mdbdvalin => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.22',
    :machine_cpu => '1',
    :machine_memory => '512',
    },


##shard1 erebor
  :mdbbifur => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.24',
    :machine_cpu => '1',
    :machine_memory => '512',
    },
  :mdbgloin => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.25',
    :machine_cpu => '1',
    :machine_memory => '512',
    },
  :mdbnori => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.26',
    :machine_cpu => '1',
    :machine_memory => '512',
    },


## shard2 moria
  :mdbfili => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.29',
    :machine_cpu => '1',
    :machine_memory => '512',
    },
  :mdbbombur => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.28',
    :machine_cpu => '1',
    :machine_memory => '512',
    },

  :mdbkili => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.31',
    :machine_cpu => '1',
    :machine_memory => '512',
    },

  :promsauron => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.220',
    :machine_cpu => '1',
    :machine_memory => '512',
  },


  ###################################
  :ansible => { #must be last
        :box_name => "centos/7",
        :ip_addr => '172.20.1.250',
        :machine_cpu => '1',
        :machine_memory => '512',
  }
}

Vagrant.configure("2") do |config|

  MACHINES.each do |boxname, boxconfig|

    config.vm.define boxname do |box|

        box.vm.box = boxconfig[:box_name]
        box.vm.host_name = boxname.to_s
        box.vm.network "private_network", ip: boxconfig[:ip_addr]

        box.vm.provider :virtualbox do |box|
            box.memory =  boxconfig[:machine_memory]
            box.cpus =    boxconfig[:machine_cpu]
            box.name =    boxname.to_s

        end
        #общий провижн, что применяется для всех тачек
        box.vm.provision "shell", inline: <<-SHELL
			    bash -x /vagrant/provision.sh
        SHELL

        case boxname.to_s
        when "ansible"
          provision_path = './' + boxname.to_s
          provision_script = provision_path +  '/provision.sh'
          provision_work_dir= '/vagrant/' + boxname.to_s
          provision_box_name= boxname.to_s
          box.vm.provision "shell", run: "always", inline: <<-SHELL
            bash -x /vagrant/ansible/provision.sh
          SHELL
        end
    end
  end
end

