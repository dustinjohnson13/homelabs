## Steps

- Install Ubuntu with OpenSSH server support
- `sudo apt dist-upgrade`
- `sudo apt install python2 net-tools`
- `ifconfig` (to get ip address)

On Laptop         
- `ssh-copy-id -i ~/.ssh/lan <user>@<ip address>`

On Server  
- `wget https://bootstrap.pypa.io/pip/2.7/get-pip.py`
- `sudo python2 get-pip.py`
- `pip install ansible pyyaml`

On Laptop
- `brew install ansible`
- `echo '<vault password>' > ~/.vault_password`
- `ansible-playbook -i '<ip address>,' --vault-password-file=~/.vault_password --ask-become-pass configure.yml`

## For Testing Via VirtualBox
- Install Virtualbox
- Install VirtualBox extension pack
- Use NAT Network Adapter with port forwards (Host IP: 127.0.0.1, Guest IP: 10.0.2.15 or whatever ifconfig says):
   - guest port 22 -> host port 3022 (SSH)
   - guest port 8080 -> host port 8080 (Jenkins)
   - guest port 9091 -> host port 9091 (Transmission)
   - guest port 32400 -> host port 32400 (Plex)
- Display -> Scale Factor to something like 200%
- Ubuntu Server installation notes:
   - When creating a software RAID, create unformatted partitions on EACH disk that can then be used to construct a software RAID. The Create software RAID option should remain available the entire time: https://askubuntu.com/questions/1234949/install-ubuntu-20-04-focal-fossa-with-raid-1-on-two-devices
   - Choose Raid 5
   - Create a Software Raid for each partition, 1 partition each time.  

- Use SSH config (`~/.ssh/config`):
    ```
  Host localhost
  Port 3022
  IdentityFile ~/.ssh/lan
    ```
  