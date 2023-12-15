#!/bin/bash
set -xe
curl -fsSL https://get.pulumi.com | sh
echo "PATH=$PATH:/home/$USERNAME/.pulumi/bin" >> /home/$USERNAME/.zshrc
source /home/$USERNAME/.zshrc
pulumi version
python3 -m venv /home/vscode/ansible
/home/$USERNAME/ansible/bin/python /home/$USERNAME/ansible/bin/pip install ansible
echo "PATH=$PATH:/home/$USERNAME/ansible/bin" >> /home/$USERNAME/.zshrc
source /home/$USERNAME/.zshrc
ansible --version
git config --global --add safe.directory /workspace
git config --global user.name "Johan Martin"
git config --global user.email "jnm+johanmartindev@catenare.com"
git config --global gpg.format ssh && git config --global user.signingkey "$SSH_SIGNING_KEY"
git config --global commit.gpgsign true
git config --global --unset gpg.ssh.program
