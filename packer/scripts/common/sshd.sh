#!/usr/bin/env bash
set -eu
set -o pipefail

# UseDNS is mostly useless and disabling speeds up logins
echo "UseDNS no" | sudo tee -a /etc/ssh/sshd_config
