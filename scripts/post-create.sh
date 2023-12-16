#!/bin/bash
set -xe
python3 -m venv /home/$USERNAME/ansible
echo "PATH=$PATH:/home/$USERNAME/ansible/bin" >> /home/$USERNAME/.zshrc
source /home/$USERNAME/.zshrc
/home/$USERNAME/ansible/bin/python /home/$USERNAME/ansible/bin/pip install ansible
ansible --version
git config --global --add safe.directory /workspace
git config --global user.name "Johan Martin"
git config --global user.email "jnm+johanmartindev@catenare.com"
git config --global gpg.format ssh && git config --global user.signingkey "$SSH_SIGNING_KEY"
git config --global commit.gpgsign true
git config --global --unset gpg.ssh.program
