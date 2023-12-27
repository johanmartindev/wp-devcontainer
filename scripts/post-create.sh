#!/usr/bin/env zsh
echo $USERNAME
python3 -m venv /home/$USERNAME/ansible
echo "PATH=$PATH:/home/$USERNAME/ansible/bin" >> /home/$USERNAME/.zshrc
/home/$USERNAME/ansible/bin/python /home/$USERNAME/ansible/bin/pip install ansible
ansible --version
/home/vscode/ansible/bin/pip3 install ansible-lint
source /home/$USERNAME/.zshrc
