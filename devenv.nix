{ pkgs, ... }:

{
  languages.terraform = {
    enable = true;
    version = "1.8.1";
  };

  packages = [
    pkgs.go
    pkgs.gotools
    pkgs.upbound
  ];
}
