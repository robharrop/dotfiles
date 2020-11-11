{ pkgs, ... }:

let
  extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    {
      name = "Nix";
      publisher = "bbenoist";
      version = "1.0.1";
      sha256 = "0zd0n9f5z1f0ckzfjr38xw2zzmcxg1gjrava7yahg5cvdcw6l35b";
    }
    {
      name = "nixfmt-vscode";
      publisher = "brettm12345";
      version = "0.0.1";
      sha256 = "07w35c69vk1l6vipnq3qfack36qcszqxn8j3v332bl0w6m02aa7k";
    }
    {
      name = "solargraph";
      publisher = "castwide";
      version = "0.21.1";
      sha256 = "15dy6pg4cm0marj5wf5swqk60vmm0xbz284r26jhyn2jai8ccb33";
    }
    {
      name = "gitlens";
      publisher = "eamodio";
      version = "10.2.3";
      sha256 = "00pddp8jlmqmc9c50vwm6bnkwg9gvvfn8mvrz1l9fl1w88ia1nz0";
    }
    {
      name = "prettier-vscode";
      publisher = "esbenp";
      version = "5.7.2";
      sha256 = "1wf4dwh11pz2hcy26kvhqnp2bhnk6n0pjh2qs0jsn8sl16656f1f";
    }
    {
      name = "haskell";
      publisher = "haskell";
      version = "1.2.0";
      sha256 = "0vxsn4s27n1aqp5pp4cipv804c9cwd7d9677chxl0v18j8bf7zly";
    }
    {
      name = "language-haskell";
      publisher = "justusadam";
      version = "3.3.0";
      sha256 = "1285bs89d7hqn8h8jyxww7712070zw2ccrgy6aswd39arscniffs";
    }
    {
      name = "vscode-docker";
      publisher = "ms-azuretools";
      version = "1.7.0";
      sha256 = "0xl5y36kwh59mnb9j1pnsl5bn62z4n4lvsp31r1xscxrs9vh1ngb";
    }
    {
      name = "ruby";
      publisher = "rebornix";
      version = "0.27.0";
      sha256 = "1y0fvciqxkj7nwvh4x25vrjfk1rym9h5fd38s89qfla36ac88fpr";
    }
    {
      name = "rust";
      publisher = "rust-lang";
      version = "0.7.8";
      sha256 = "039ns854v1k4jb9xqknrjkj8lf62nfcpfn0716ancmjc4f0xlzb3";
    }
    {
      name = "vim";
      publisher = "vscodevim";
      version = "1.17.1";
      sha256 = "10f8jz52gr6k2553awa66m006wszj9z2rnshsic6h2aawxiz3zq1";
    }
    {
      name = "vscode-ruby";
      publisher = "wingrunr21";
      version = "0.27.0";
      sha256 = "0sd78x44brcmwj0baam58j1j9gx57w7xq52y77jjyrwlac5fxsr8";
    }
  ];

  vscode =
    pkgs.vscode-with-extensions.override { vscodeExtensions = extensions; };
in {
  nixpkgs.config.allowUnfree = true;
  home.packages = [ vscode ];
}
