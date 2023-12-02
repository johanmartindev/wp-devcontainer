#!/bin/bash
set -xe
./wp-site-setup.sh
git config --global --add safe.directory /workspace
git config --global user.name "Johan Martin"
git config --global user.email "jnm+johanmartindev@catenare.com"
git config --global --unset gpg.ssh.program
