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

#dns:
#hosts:
#  dns-germes:
#    ansible_host: 172.20.1.5

#haproxy:
#hosts:
#  haproxy-zefs:
#    ansible_host: 172.20.1.10
#  haproxy-aid:
#    ansible_host: 172.20.1.11

#cer:
#hosts:
#  cer-appolo:
#    ansible_host: 172.20.1.15
#  cer-dionis:
#    ansible_host: 172.20.1.16
#  cer-morphius:
#    ansible_host: 172.20.1.17

#mongodb-config:
#hosts:
#  mdb-afina:
#    ansible_host: 172.20.1.20
#  mdb-fobos:
#    ansible_host: 172.20.1.21
#  mdb-gera:
#    ansible_host: 172.20.1.22
#  mdb-deimos:
#    ansible_host: 172.20.1.23

#mongodb-shard1:
#hosts:
#  mdb-afrodita:
#    ansible_host: 172.20.1.24
#  mdb-geya:
#    ansible_host: 172.20.1.25
#  mdb-clio:
#    ansible_host: 172.20.1.26
#  mdb-nica:
#    ansible_host: 172.20.1.27




#gluster:
#hosts:
#  gluster-ares:
#    ansible_host: 172.20.1.40
#  gluster-erot:
#    ansible_host: 172.20.1.41
#  gluster-gefest:
#    ansible_host: 172.20.1.42


#zabbix:
#hosts:
#  zabbix-poseidon:
#    ansible_host: 172.20.1.220
#kibana:
#hosts:
#  kibana-plutos:
#    ansible_host: 172.20.1.210

#nfsServer:
#hosts:
#  nfs-server1:
#    ansible_host: 172.20.1.200


# Определяем список машин ддя развертывания
MACHINES = {

      ####kibana:
    :kibanaplutos => {
      :box_name => "centos/7",
      :ip_addr => '172.20.1.210',
      :machine_cpu => '1',
      :machine_memory => '2048',
      },

    ####haproxy:
    :haproxyzefs => {
      :box_name => "centos/7",
      :ip_addr => '172.20.1.10',
      :machine_cpu => '1',
      :machine_memory => '128',
      },
    :haproxyaid => {
      :box_name => "centos/7",
      :ip_addr => '172.20.1.11',
      :machine_cpu => '1',
      :machine_memory => '128',
      },

####gluster:
  # :glusterares => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.40',
  #   :machine_cpu => '1',
  #   :machine_memory => '512',
  #   },
  # :glustererot => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.41',
  #   :machine_cpu => '1',
  #   :machine_memory => '512',
  #   },


  # :glustergefest => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.42',
  #   :machine_cpu => '1',
  #   :machine_memory => '256',
  #   },


####NFS Server
  # :tartarus => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.200',
  #   :machine_cpu => '1',
  #   :machine_memory => '256',
  #   },

####config
  # :mdbafina => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.20',
  #   :machine_cpu => '1',
  #   :machine_memory => '386',
  #   },
  # :mdbfobos => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.21',
  #   :machine_cpu => '1',
  #   :machine_memory => '386',
  #   },
  # :mdbgera => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.22',
  #   :machine_cpu => '1',
  #   :machine_memory => '386',
  #   },
  # :mdbdeimos => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.23',
  #   :machine_cpu => '1',
  #   :machine_memory => '386',
  # },

###shard1 sparta
  # :mdbafrodita => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.24',
  #   :machine_cpu => '1',
  #   :machine_memory => '386',
  #   },
  # :mdbgeya => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.25',
  #   :machine_cpu => '1',
  #   :machine_memory => '386',
  #   },
  # :mdbclio => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.26',
  #   :machine_cpu => '1',
  #   :machine_memory => '386',
  #   },
  # :mdbnica => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.27',
  #   :machine_cpu => '1',
  #   :machine_memory => '386',
  # },

### shard2 rodos
  # :mdbfemida => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.29',
  #   :machine_cpu => '1',
  #   :machine_memory => '386',
  #   },
  # :mdberida => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.28',
  #   :machine_cpu => '1',
  #   :machine_memory => '386',
  #   },

  # :mdbeos => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.31',
  #   :machine_cpu => '1',
  #   :machine_memory => '386',
  #   },

  # :mdbgestia => {
  #   :box_name => "centos/7",
  #   :ip_addr => '172.20.1.30',
  #   :machine_cpu => '1',
  #   :machine_memory => '386',
  # },

  ###################################
  :ansible => { #must be last
        :box_name => "centos/7",
        :ip_addr => '172.20.1.250',
        :machine_cpu => '1',
        :machine_memory => '386',
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
        #переменные для окружения виртуалки
        #provision_path = './' + boxname.to_s
        #provision_script = provision_path +  '/provision.sh'
        #provision_work_dir= '/vagrant/' + boxname.to_s
        #provision_box_name= boxname.to_s
        #MACHINES.each do |boxname, boxconfig|
        #provision_machines= MACHINES
        #end
        #персональный провижн для каждой
        # when "glusterares"
        #   box.vm.provider :virtualbox do |box|
        #     second_disk = boxname.to_s + '-disk2.vdi'
        #     if not File.exists?(second_disk)
        #       box.customize ['createhd', '--filename', second_disk, '--format', 'VDI', '--size', 10 * 1024]
        #       box.customize ['storagectl', :id, '--name', 'SATA Controller', '--add', 'sata', '--portcount', 2]
        #     end
        #     box.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', second_disk]
        #   end
        # when "glustererot"
        #   box.vm.provider :virtualbox do |box|
        #     second_disk = boxname.to_s + '-disk2.vdi'
        #     if not File.exists?(second_disk)
        #       box.customize ['createhd', '--filename', second_disk, '--format', 'VDI', '--size', 10 * 1024]
        #       box.customize ['storagectl', :id, '--name', 'SATA Controller', '--add', 'sata', '--portcount', 2]
        #     end
        #     box.customize ['storageattach', :id, '--storagectl', 'SATA Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', second_disk]
        #   end

        when "ansible"
          provision_path = './' + boxname.to_s
          provision_script = provision_path +  '/provision.sh'
          provision_work_dir= '/vagrant/' + boxname.to_s
          provision_box_name= boxname.to_s
          box.vm.provision "shell", run: "always", inline: <<-SHELL
            bash -x /vagrant/ansible/provision.sh
          SHELL
        end
        #box.vm.provision "shell", path: provision_script,
        #  env: {
        #      "vagrant_box_name" => provision_box_name,
        #      "vagrant_work_dir" => provision_work_dir,
              #"vagrant_machines" => provision_machines
        #  }
    end
  end
end

