#!/bin/bash
chmod 0600 /vagrant/ansible.pem
all_hosts=(
# mdb-torin
# mdb-balin
# mdb-dvalin
# mdb-bifur
# mdb-gloin
# mdb-nori
# mdb-bombur
# mdb-fili
# mdb-kili
gluster-bilbo
gluster-frodo
# cer-appollo
# cer-tauriel
# cer-tranduil
haproxy-radagast
haproxy-gendalf
# kibana-elrond
# prom-sauron
)

echo -e "Restart service keepalived"
for target_host in ${!all_hosts[@]}
do
  echo "Restart on ${all_hosts[$target_host]}"| awk -F"%" '{ printf ( "%-40s", $1 ) }'
  ssh -q -o "StrictHostKeyChecking no" vagrant@${all_hosts[$target_host]} -i /vagrant/ansible.pem 'sudo systemctl restart keepalived.service'
  if [[ $? == 0 ]]
    then
      printf '\e[7;32m%-6s\e[m' "Succses"
      printf '\n'
    else
      printf '\e[7;31m%-6s\e[m'  "Error"
      printf '\n'
  fi
done
