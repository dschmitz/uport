#! /bin/bash

VM="$(basename `pwd`)-vm"
VM_LOC=$HOME/VirtualBox\ VMs/$VM

echo $VM_LOC
if [ -d "$VM_LOC" ]
then
  echo "erasing $VM_LOC"
  
  if [ VBoxManage showvminfo $VM > /dev/null 2>&1 ]
  then   
    VBoxManage controlvm $VM poweroff
    VBoxManage unregistervm $VM -delete
  fi
  rm -rf "$VM_LOC"
fi
