#!/bin/bash
set -xv
echo "USER : $USER"
echo "HOME : $HOME"
echo "WORKSPACE : $WORKSPACE"


#scl enable python27 bash
export PATH="/opt/rh/python27/root/usr/bin:/usr/lib64/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin"
export LD_LIBRARY_PATH="/opt/rh/python27/root/usr/lib64"

#alias python='/opt/rh/python27/root/usr/bin/python2.7'

source /opt/rh/python27/enable
python -V
python2.7 -V

pip -V

ansible --version

echo "Configure Jenkins slaves solaris"

cd Scripts/ansible/roles/solaris

VBoxManage list vms

VBoxManage controlvm vagrant-solaris-11 poweroff || true
#VBoxManage unregistervm vagrant-solaris-11 --delete || true
vagrant up || exit 1
