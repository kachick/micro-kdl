# How to develop

## Setup

1. Install [Nix](https://nixos.org/) package manager and enable [Flakes](https://nixos.wiki/wiki/Flakes)\
   Or use Nix installed containers. For example, look at [this repo](https://github.com/kachick/containers)
2. Run dev shell as one of the following
   - with [direnv](https://github.com/direnv/direnv): `direnv allow`
   - nix only: `nix develop`
3. You can use development tools

```bash
git clone https://github.com/kachick/micro-kdl
cd micro-kdl
nix develop
task workspace
```

## References

- <https://github.com/kdl-org/kdl/blob/de1dbd2c330c9193b836499db241787484627c3b/SPEC.md>
- <https://github.com/zyedidia/micro/blob/21bb61c5ff3cd4cd11adbd521657df90d50f54c7/runtime/syntax/toml.yaml>
- <https://github.com/kdl-org/vscode-kdl/blob/646d7b819d72b2f0d9dd05102a305506bafa3cf6/syntaxes/kdl.tmLanguage.json>
- <https://github.com/imsnif/kdl.vim/blob/b84d7d3a15d8d30da016cf9e98e2cfbe35cddee5/syntax/kdl.vim>
- <https://github.com/helix-editor/helix/blob/ff33b07756548935577aefc15cf48a1beb27b162/languages.toml#L2566-L2576>
