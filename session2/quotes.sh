#!/bin/bash 

name="Abdul Sharif"

echo 'Hello there $name'
echo "Hello there $name"

selinux="enforcing"

cat <<CONFIG > /etc/selinux/config
SELINUX=$selinux
# SELINUXTYPE= can take one of these three values:
#     targeted - Targeted processes are protected,
#     minimum - Modification of targeted policy. Only selected processes are protected.
#     mls - Multi Level Security protection.
SELINUXTYPE=targeted
CONFIG


