## Steps

- Download Plex and Universal Media Server binaries from Server/Dropbox/Google/
- Install Ubuntu with OpenSSH server support
- `sudo apt dist-upgrade`
- `sudo apt install python python-pip`
- `ifconfig` (to get ip address)
         
- `ssh-copy-id -i ~/.ssh/lan_key <user>@<ip address>`
- `pip install ansible pyyaml python-jenkins`
- `echo '<vault password' > ~/.vault_password`
- `ansible-playbook -i '<ip address>,' --vault-password-file=~/.vault_password --ask-become-pass configure.yml`

## For Testing Via VirtualBox
- Use NAT Network Adapter with port forwards:
   - guest port 22 -> host port 3022
   - guest port 8080 -> host port 8080
   - guest port 9091 -> host port 9091
- Use SSH config (`~/.ssh/config`):
    ```
    host = localhost
      Port 3022
      IdentityFile ~/.ssh/lan_key
    ```
