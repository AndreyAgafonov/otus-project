#!/bin/bash
chmod 0600 /vagrant/ansible.pem
all_dbs=(mdb-afina mdb-fobos mdb-gera mdb-afrodita mdb-geya mdb-clio mdb-erida mdb-femida mdb-eos)

for target_host in ${all_dbs[*]}
do
  echo "Restart mongod on" $target_host
  ssh -q -o "StrictHostKeyChecking no" vagrant@${target_host} -i /vagrant/ansible.pem 'sudo systemctl stop mongod && sleep 5 && sudo systemctl restart mongod && sudo systemctl status mongod |grep "Active:"'
done