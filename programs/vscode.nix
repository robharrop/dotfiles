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
      version = "11.3.0";
      sha256 = "0py8c5h3pp99r0q9x2dgh1ryp05dbndyc5ipp999z3x1xvwnfrlv";
    }
    {
      name = "prettier-vscode";
      publisher = "esbenp";
      version = "6.3.1";
      sha256 = "0m2xx4r2sy00f3wvzi9968rxq345k057ybr21jyvkrwm5569c5mm";
    }
    {
      name = "vscode-graphql";
      publisher = "GraphQL";
      version = "0.3.15";
      sha256 = "03p7xwa6li29fraav2ka4p0i8k9a9ghzyaw51ap91ysawc5xymbg";
    }
    {
      name = "terraform";
      publisher = "hashicorp";
      version = "2.9.1";
      sha256 = "1i4pzxw57hf2g7x62hfsb588b1lz3zjjh8ny96qqrif2bj2h887z";
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
      version = "3.4.0";
      sha256 = "0ab7m5jzxakjxaiwmg0jcck53vnn183589bbxh3iiylkpicrv67y";
    }
    {
      name = "Kotlin";
      publisher = "mathiasfrohlich";
      version = "1.7.1";
      sha256 = "0zi8s1y9l7sfgxfl26vqqqylsdsvn5v2xb3x8pcc4q0xlxgjbq1j";
    }
    {
      name = "vscode-docker";
      publisher = "ms-azuretools";
      version = "1.11.0";
      sha256 = "141800jcxslqa5nbwcdj4mwnysa42mxligvc073gf225ns984vfr";
    }
    {
      name = "python";
      publisher = "ms-python";
      version = "2021.3.680753044";
      sha256 = "1a1krskjpwylf2ww8a48kkzd6q2x6rkyamjr576qdm4wl3f9smy5";
    }
    {
      name = "jupyter";
      publisher = "ms-toolsai";
      version = "2021.5.702919634";
      sha256 = "0z27nmmn3lx8daywvqc1gx1zgj77i19ahmixf7pn8wvxkp17mzk6";
    }
    {
      name = "ruby";
      publisher = "rebornix";
      version = "0.28.1";
      sha256 = "179g7nc6mf5rkha75v7rmb3vl8x4zc6qk1m0wn4pgylkxnzis18w";
    }
    {
      name = "rust";
      publisher = "rust-lang";
      version = "0.7.8";
      sha256 = "039ns854v1k4jb9xqknrjkj8lf62nfcpfn0716ancmjc4f0xlzb3";
    }
    {
      name = "scala";
      publisher = "scala-lang";
      version = "0.5.2";
      sha256 = "1b8ydigspgr2cni86cqrd0md61ks62y9qca3ia6dq11pvfdwxbsd";
    }
    {
      name = "vim";
      publisher = "vscodevim";
      version = "1.19.3";
      sha256 = "1ar57ad1j07calsa2c350972r5q8833gphg5a04y605wgmwg8d1i";
    }
    {
      name = "vscode-ruby";
      publisher = "wingrunr21";
      version = "0.28.0";
      sha256 = "1gab5cka87zw7i324rz9gmv423rf5sylsq1q1dhfkizmrpwzaxqz";
    }
  ];

  vscode =
    pkgs.vscode-with-extensions.override { vscodeExtensions = extensions; };
in {
  nixpkgs.config.allowUnfree = true;
  home.packages = [ vscode ];
}
