#!/bin/bash
sudo cp 01-notary.conf /etc/sysctl.d/
echo "$USER soft nofile 1000000" | sudo tee --append /etc/security/limits.conf
echo "$USER hard nofile 1000000" | sudo tee --append /etc/security/limits.conf
echo "session required pam_limits.so" | sudo tee --append /etc/pam.d/common-session 

