Vagrant.require_version ">= 1.7.0"

def set_vbox(vb, config, mem)
  vb.memory = mem
  vb.cpus = 2
  config.vm.box = "generic/ubuntu1804"
end

Vagrant.configure("2") do |config|
  config.vm.provider "libvirt"
  master = 1
  node = 3

  (1..(master + node)).each do |mid|
    name = (mid <= node) ? "n" : "m"
    id   = (mid <= node) ? mid : (mid - node)
    mem  = (mid <= node) ? 4096 : 8192
    config.vm.define "k8s-#{name}#{id}" do |n|
      n.vm.hostname = "k8s-#{name}#{id}"

      n.vm.provider :libvirt do |vb, override|
        set_vbox(vb, override, mem)
      end
    end
  end

end
