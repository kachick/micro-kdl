# micro-kdl

[![CI - Nix](https://github.com/kachick/micro-kdl/actions/workflows/nix.yml/badge.svg?branch=main)](https://github.com/kachick/micro-kdl/actions/workflows/nix.yml?query=branch%3Amain+)
[![CI - Install](https://github.com/kachick/micro-kdl/actions/workflows/install.yml/badge.svg?branch=main)](https://github.com/kachick/micro-kdl/actions/workflows/install.yml?query=branch%3Amain+)

[micro](https://github.com/zyedidia/micro) editor syntax highlighting for [KDL](https://github.com/kdl-org/kdl)

![Screen Shot](https://raw.githubusercontent.com/kachick/micro-kdl/main/assets/screenshot.png)

## Installation

### Plugin Manager

```bash
micro ~/.config/micro/settings.json
```

```json
"pluginrepos": ["https://raw.githubusercontent.com/kachick/micro-kdl/main/repo.json"],
```

```bash
micro -plugin install kdl
```

### Git

Personally I was started from this simple solution, I don't know any disadvantage for others except including non related files.

```bash
cd ~/.config/micro/plug
git clone https://github.com/kachick/micro-kdl kdl
```

### Nix - home-manager

See [my dotfiles](https://github.com/kachick/dotfiles/blob/f042b85145fc045966a114d72beb60477af06141/pkgs/micro-kdl/default.nix) for the packaging example.

### Test and develop without installation

Check the [guide](CONTRIBUTING.md)

## Limitations

- Only syntax highlighting
- No formatter, completions and LSP
