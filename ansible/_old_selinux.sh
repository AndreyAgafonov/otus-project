#!/bin/bash
chmod 0600 /vagrant/ansible.pem
all_dbs=(mdb-torin mdb-balin mdb-dvalin mdb-bifur mdb-gloin mdb-nori mdb-bombur mdb-fili mdb-kili)

for target_host in ${all_dbs[*]}
do
  echo "Restart mongod on" $target_host
  ssh -q -o "StrictHostKeyChecking no" vagrant@${target_host} -i /vagrant/ansible.pem 'sudo semanage fcontext -a -t mongod_var_lib_t "/datadrive"'
done



#ssh -q -o "StrictHostKeyChecking no" vagrant@${target_host} -i /vagrant/ansible.pem 'sudo systemctl stop mongod && sleep 15 && sudo systemctl restart mongod && sudo systemctl status mongod |grep "Active:"'

# sudo semanage fcontext -a -t mongod_var_lib_t '/datadrive/'
# sudo restorecon -v '/datadrive/'
# sudo semanage port -a -t mongod_port_t -p tcp 27017