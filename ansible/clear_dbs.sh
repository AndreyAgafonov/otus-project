#!/bin/bash
chmod 0600 /vagrant/ansible.pem
all_dbs=(mdb-afina mdb-fobos mdb-gera mdb-afrodita mdb-geya mdb-clio mdb-erida mdb-femida mdb-eos)

for target_host in ${all_dbs[*]}
do
  echo "clear data fromt" $target_host
  ssh -q -o "StrictHostKeyChecking no" vagrant@${target_host} -i /vagrant/ansible.pem 'sudo systemctl stop mongod && sudo rm -rf /datadrive && sudo rm -f /etc/mongod.conf'
done