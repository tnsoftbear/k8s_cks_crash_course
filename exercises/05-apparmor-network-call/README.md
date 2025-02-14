```sh
$ vagrant up --provider=virtualbox
There was an error while executing `VBoxManage`, a CLI used by Vagrant
for controlling VirtualBox. The command and stderr is shown below.

Command: ["startvm", "60d9eb17-4f21-4972-b4ce-b0bca8af11d6", "--type", "headless"]

Stderr: VBoxManage: error: VirtualBox can't operate in VMX root mode. Please disable the KVM kernel extension, recompile your kernel and reboot (VERR_VMX_IN_VMX_ROOT_MODE)
VBoxManage: error: Details: code NS_ERROR_FAILURE (0x80004005), component ConsoleWrap, interface IConsole
```

```sh
# Временно выгрузить KVM модули
$ sudo rmmod kvm_intel
$ sudo rmmod kvm

$ vagrant up --provider=virtualbox
$ vagrant ssh kube-control-plane
```