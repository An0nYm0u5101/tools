
# just a record of the commands i'm using to setup kvm on ubuntu to have many small linux vms
# https://help.ubuntu.com/community/KVM/CreateGuests
# http://xmodulo.com/use-kvm-command-line-debian-ubuntu.html
sudo apt-get update
# http://askubuntu.com/questions/448358/automating-apt-get-install-with-assume-yes
sudo apt-get install kvm qemu-kvm libvirt-bin --assume-yes
sudo apt-get upgrade --assume-yes
# sudo virsh --connect qemu:///system


# http://raspberrypi.stackexchange.com/questions/4296/can-i-emulate-x86-cpu-to-run-teamspeak-3-server
# http://bochs.sourceforge.net/
