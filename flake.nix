{
  description = "This flake houses personal information";
  inputs = { };
  outputs =
    { self }:
    let
      user = {
        name = "Your Name";
        email = "your.email.address@server.com";
        userName = "system_username";
        hostName = "fictional_ship_name";
        # Version of latest clean install of Nixos
        stateVersion = "23.11";
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
