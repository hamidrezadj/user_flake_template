# User Flake Template
This repository proviedes a template for a user flake that gives the nixos configuration its needed personal information like emails and usernames. All of these information should be changed before installing the system.
## Directory Structure
The name of the directory that this flake.nix resides should be changed to "user" instead of "user_flake_template".
Here's how the directories should look like when installing Nixos:
```
/etc/nixos/dotfiles
/etc/nixos/user
```
Here's how the directories should look like after installing Nixos:
```
/home/userName/.config/dotfiles
/etc/nixos/user
```
## Hashed Password
For hashing passwords the following command can be used.
```sh
mkpasswd --method=bcrypt --rounds=13
```
If the hashedPassword field was not changed by accident, the default password is "test".
## State Version
This should be the version of the latest **clean** install of the Nixos.
