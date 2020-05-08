#!/bin/bash
chmod 0600 /vagrant/ansible.pem
all_hosts=(
mdb-afina
mdb-fobos
mdb-gera
# mdb-afrodita
# mdb-geya
# mdb-clio
# mdb-erida
# mdb-femida
# mdb-eos
# gluster-ares
# gluster-erot
# cer-appollo
# cer-dionis
# cer-morphius
# haproxy-zefs
# haproxy-aid
# kibana-plutos
# prometheus-poseydon
)
status_defence=()
echo -e "Hostname" "\t" "\t" "SELinux State" "\t" "Firewall open ports" "\t" "Firewall State"
for target_host in ${!all_hosts[@]}
do
  array=$( ssh -q -o "StrictHostKeyChecking no" vagrant@${all_hosts[$target_host]} -i /vagrant/ansible.pem 'sudo  echo -e $(hostname)";"$(/usr/sbin/getenforce)";"$(systemctl status firewalld |grep "Active:"| sed -En "s/Active: //p")";"$(sudo firewall-cmd --zone=public --list-ports)' )
  #echo $array
  status_defence+=( "$array :" )
  echo ${status_defence[$target_host]}| column -t -s ";"
  #ssh -q -o "StrictHostKeyChecking no" vagrant@${target_host} -i /vagrant/ansible.pem 'sudo systemctl start firewalld'
done
echo ${status_defence[@]}