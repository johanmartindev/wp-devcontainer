#!/bin/bash
set -xe
git config --global --add safe.directory /workspace
git config --global --add safe.directory /workspace/.devcontainer
git config --global --add safe.directory /workspace/docfox-plugin
git config --global --add safe.directory /workspace/wordpress-development
git config --global user.name "Johan Martin"
git config --global user.email "jnm+johanmartindev@catenare.com"
git config --global gpg.format ssh && git config --global user.signingkey "$SSH_SIGNING_KEY" && git config commit.gpgsign true --global
git config --global --unset gpg.ssh.program
