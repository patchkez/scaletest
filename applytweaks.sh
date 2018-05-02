#!/bin/bash
sudo cp 01-notary.conf /etc/sysctl.d/
echo "$USER soft nofile 1000000" | sudo tee --append /etc/security/limits.conf
echo "$USER hard nofile 1000000" | sudo tee --append /etc/security/limits.conf
echo "hadoop - nproc 5000000" | sudo tee --apend /etc/security/limits.conf
echo "ulimit -i 515173" | tee --append ~/.bashrc
echo "ulimit -u 515173" | tee --append ~/.bashrc
echo "session required pam_limits.so" | sudo tee --append /etc/pam.d/common-session 
echo "kernel.pid_max = 4194303" | sudo tee --append  /etc/sysctl.conf
echo "kernel.threads-max = 4194303" | sudo tee --append  /etc/sysctl.conf
