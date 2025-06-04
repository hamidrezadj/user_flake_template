# User Flake Template
This repository proviedes a template for a user flake that gives the nixos configuration its needed personal information like emails and usernames.
## Directory Structure
This repository should be in the same directory as the "dotfiles" repository.
Also the name of the directory that this flake.nix resides should be changed to "user" instead of "user_flake_template".
## Hashed Password
For hashed password the following command can be used.
```sh
mkpasswd --method=bcrypt --rounds=13
```
