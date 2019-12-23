Vagrant.require_version ">= 1.7.0"

def set_vbox(vb, config)
  vb.memory = 2048
  vb.cpus = 2

  config.vm.box = "ubuntu1804"
end

Vagrant.configure("2") do |config|
  config.vm.provider "libvirt"
  master = 1
  node = 2

  (1..(master + node)).each do |mid|
    name = (mid <= node) ? "n" : "m"
    id   = (mid <= node) ? mid : (mid - node)

    config.vm.define "k8s-#{name}#{id}" do |n|
      n.vm.hostname = "k8s-#{name}#{id}"

      n.vm.provider :libvirt do |vb, override|
        set_vbox(vb, override)
      end
    end
  end

end
