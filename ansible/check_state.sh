#!/bin/bash
chmod 0600 /vagrant/ansible.pem
all_hosts=(
ansible
mdb-afina
mdb-fobos
mdb-gera
mdb-afrodita
mdb-geya
mdb-clio
mdb-erida
mdb-femida
mdb-eos
gluster-ares
gluster-erot
cer-appollo
cer-dionis
cer-morphius
haproxy-zefs
haproxy-aid
kibana-plutos
prometheus-poseydon
)
echo -e "Hostname" "\t" "\t" "SELinux State" "\t" "Firewall open ports" "\t" "Firewall State"
for target_host in ${all_hosts[*]}
do
  ssh -q -o "StrictHostKeyChecking no" vagrant@${target_host} -i /vagrant/ansible.pem 'sudo  echo -e $(hostname) "\t" "\t" $(/usr/sbin/getenforce) "\t" $(sudo firewall-cmd --zone=public --list-ports) "\t" $(systemctl status firewalld |grep "Active:"| sed -En "s/Active: //p")'
  #ssh -q -o "StrictHostKeyChecking no" vagrant@${target_host} -i /vagrant/ansible.pem 'sudo systemctl start firewalld'
done