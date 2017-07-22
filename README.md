Steps
-------------------------------------------

        Install Ubuntu, running updates and installing restricted media software
        sudo apt install openssh-server net-tools
        sudo apt dist-upgrade
        ifconfig (to get ip address)
        
        ssh-copy-id -i ~/.ssh/id_rsa <user>@<ip address>
        pip install ansible pyyaml
        . ~/git/ansible/hacking/env-setup
        ansible-playbook -i '<ip address>,' --vault-password-file=~/.vault_password --ask-vault-pass configure.yml


