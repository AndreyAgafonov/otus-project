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
    :cerappolo => {
      :box_name => "centos/7",
      :ip_addr => '172.20.1.15',
      :machine_cpu => '1',
      :machine_memory => '256',
      },
    :cerdionis => {
      :box_name => "centos/7",
      :ip_addr => '172.20.1.16',
      :machine_cpu => '1',
      :machine_memory => '256',
      },
    :cermorphius => {
      :box_name => "centos/7",
      :ip_addr => '172.20.1.17',
      :machine_cpu => '1',
      :machine_memory => '256',
      },

      ####kibana:
    :kibanaplutos => {
      :box_name => "centos/7",
      :ip_addr => '172.20.1.210',
      :machine_cpu => '1',
      :machine_memory => '2048',
      },

    ###haproxy:
    :haproxyzefs => {
      :box_name => "centos/7",
      :ip_addr => '172.20.1.10',
      :machine_cpu => '1',
      :machine_memory => '512',
      },
    :haproxyaid => {
      :box_name => "centos/7",
      :ip_addr => '172.20.1.11',
      :machine_cpu => '1',
      :machine_memory => '512',
      },

###gluster:
  :glusterares => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.41',
    :machine_cpu => '1',
    :machine_memory => '512',
    },
  :glustererot => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.42',
    :machine_cpu => '1',
    :machine_memory => '512',
    },

###config
  :mdbafina => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.20',
    :machine_cpu => '1',
    :machine_memory => '512',
    },
  :mdbfobos => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.21',
    :machine_cpu => '1',
    :machine_memory => '512',
    },
  :mdbgera => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.22',
    :machine_cpu => '1',
    :machine_memory => '512',
    },
  # :mdbdeimos => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.23',
  #   :machine_cpu => '1',
  #   :machine_memory => '386',
  # },

##shard1 sparta
  :mdbafrodita => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.24',
    :machine_cpu => '1',
    :machine_memory => '512',
    },
  :mdbgeya => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.25',
    :machine_cpu => '1',
    :machine_memory => '512',
    },
  :mdbclio => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.26',
    :machine_cpu => '1',
    :machine_memory => '512',
    },
  # :mdbnica => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.27',
  #   :machine_cpu => '1',
  #   :machine_memory => '386',
  # },

## shard2 rodos
  :mdbfemida => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.29',
    :machine_cpu => '1',
    :machine_memory => '512',
    },
  :mdberida => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.28',
    :machine_cpu => '1',
    :machine_memory => '512',
    },

  :mdbeos => {
    :box_name => "centos/7",
    :ip_addr => '172.20.1.31',
    :machine_cpu => '1',
    :machine_memory => '512',
    },

  # :mdbgestia => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.30',
  #   :machine_cpu => '1',
  #   :machine_memory => '386',
  # },

#   :prometheusposeydon => {
#     :box_name => "centos/7",
#     :ip_addr => '172.20.1.220',
#     :machine_cpu => '1',
#     :machine_memory => '512',
#   },


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

