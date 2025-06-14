{
  description = "This flake houses personal information";
  inputs = { };
  outputs =
    { self }:
    let
      user = {
        # Host name will be your system's identity.
        hostName = "choose_from_bridge_names_for_example";
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
