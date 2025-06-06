{
  description = "This flake houses personal information";
  inputs = { };
  outputs =
    { self }:
    let
      user = {
        # Host name will be your system's identity, you should remember it.
        hostName = "bridge_names_for_example";
        # nixosVersion should be "stable" or "unstable" or any other string.
        # This should be configured alongside dotfiles flake.nix file,
        # so it exists on the other side as well.
        nixosVersion = "stable";
        # Version of last clean install of Nixos.
        stateVersion = "23.11";

        name = "Your Name";
        email = "your.email.address@server.com";
        userName = "system_username";
        timeZone = "US/Pacific";
        # mkpasswd --method=bcrypt --rounds=13
        hashedPassword = "$2b$13$FXZQRzk5jxCpxFubcwlvnuNHvKM/nREu2MUJKlQkx20Fp91MsMU5S";
        mumblePassword = "your_password";
        gitUser = "git_user";
        gitEmail = "git_email";
      };
    in
    user;
}
