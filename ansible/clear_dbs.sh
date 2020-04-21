#!/bin/bash
chmod 0600 /vagrant/ansible.pem

ssh -q -o "StrictHostKeyChecking no" vagrant@mdb-afina -i /vagrant/ansible.pem 'sudo systemctl stop mongod && sudo rm -rf /datadrive'
ssh -q -o "StrictHostKeyChecking no" vagrant@mdb-fobos -i /vagrant/ansible.pem 'sudo systemctl stop mongod && sudo rm -rf /datadrive'
ssh -q -o "StrictHostKeyChecking no" vagrant@mdb-gera -i /vagrant/ansible.pem 'sudo systemctl stop mongod && sudo rm -rf /datadrive'
ssh -q -o "StrictHostKeyChecking no" vagrant@mdb-deimos -i /vagrant/ansible.pem 'sudo systemctl stop mongod && sudo rm -rf /datadrive'

ssh -q -o "StrictHostKeyChecking no" vagrant@mdb-afrodita -i /vagrant/ansible.pem 'sudo systemctl stop mongod && sudo rm -rf /datadrive'
ssh -q -o "StrictHostKeyChecking no" vagrant@mdb-geya -i /vagrant/ansible.pem 'sudo systemctl stop mongod && sudo rm -rf /datadrive'
ssh -q -o "StrictHostKeyChecking no" vagrant@mdb-clio -i /vagrant/ansible.pem 'sudo systemctl stop mongod && sudo rm -rf /datadrive'
ssh -q -o "StrictHostKeyChecking no" vagrant@mdb-nica -i /vagrant/ansible.pem 'sudo systemctl stop mongod && sudo rm -rf /datadrive'

ssh -q -o "StrictHostKeyChecking no" vagrant@mdb-erida -i /vagrant/ansible.pem 'sudo systemctl stop mongod && sudo rm -rf /datadrive'
ssh -q -o "StrictHostKeyChecking no" vagrant@mdb-femida -i /vagrant/ansible.pem 'sudo systemctl stop mongod && sudo rm -rf /datadrive'
ssh -q -o "StrictHostKeyChecking no" vagrant@mdb-gestia -i /vagrant/ansible.pem 'sudo systemctl stop mongod && sudo rm -rf /datadrive'
ssh -q -o "StrictHostKeyChecking no" vagrant@mdb-eos -i /vagrant/ansible.pem 'sudo systemctl stop mongod && sudo rm -rf /datadrive'
