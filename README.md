# ansible-tomca32

My Computer Setup

1. Install Homebrew
2. Install Ansible: `brew install Ansible`
3. Install community modules: `ansible-galaxy collection install community.general`
4. Run the playbook: ansible-playbook ./playbook.yml --ask-become-pass

You will need to enter the sudo pass at the beginning and the user pass once when the shell is changed to ZSH

Look into `roles/tomca32-mac/vars/main.yml` to see what Homebrew will install and what VS Code extensions are ther
Non-Homebrew installs are in `roles/tomca32-mac/tasks/non_brew_installs.yml`

Configuration files can be found in `roles/tomca32-mac/files`
