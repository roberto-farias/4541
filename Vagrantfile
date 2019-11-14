# -*- mode: ruby -*-
# vi: set ft=ruby :

vms = {
  'master' => {'memory' => '3584', 'cpus' => 2, 'ip' => '10'},
  'node1' => {'memory' => '1536', 'cpus' => 2, 'ip' => '20'},
  'node2' => {'memory' => '1536', 'cpus' => 2, 'ip' => '30'},
  'balancer' => {'memory' => '512', 'cpus' => 1, 'ip' => '40'}
}
Vagrant.configure('2') do |config|

  config.vm.box = 'debian/buster64'
  config.vm.box_check_update = false
  
  vms.each do |name, conf|
    config.vm.define "#{name}" do |k|
      k.vm.hostname = "#{name}.example.com"
      k.vm.network 'private_network', ip: "172.27.11.#{conf['ip']}"
      k.vm.provider 'virtualbox' do |vb|
        vb.memory = conf['memory']
        vb.cpus = conf['cpus']
      end
    end
  end
end
