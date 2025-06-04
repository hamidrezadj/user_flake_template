{
  description = "This flake houses personal information";
  inputs = { };
  outputs =
    { self }:
    let
      user = rec {
        name = "Your Name";
        email = "your.email.address@server.com";
        userName = "system_username";
        systemType = "laptop";
        systemId = "main";
        hostName = userName + "-" + systemType + "-" + systemId;
        timeZone = "US/Pacific";
        hashedPassword = "$2b$13$FXZQRzk5jxCpxFubcwlvnuNHvKM/nREu2MUJKlQkx20Fp91MsMU5S";
        mumblePassword = "your_password";
        gitUser = "git_user";
        gitEmail = "git_email";
      };
    in
    user;
}
