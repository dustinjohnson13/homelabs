Steps
-------------------------------------------

        Download Plex and Universal Media Server binaries from Server/Dropbox/Google/
        Install Ubuntu with OpenSSH server support
        sudo apt dist-upgrade
        sudo apt install python
        ifconfig (to get ip address)
         
        ssh-copy-id -i ~/.ssh/id_rsa <user>@<ip address>
        pip install ansible pyyaml python-jenkins
        echo "<vault password" > ~/.vault_password
        ansible-playbook -i '<ip address>,' --vault-password-file=~/.vault_password --ask-become-pass configure.yml


