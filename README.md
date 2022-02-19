# PROCTL

> Manage, switch between templated licenses, and set languages

<p align='center'>
	<img src='https://img.shields.io/badge/Maintained-Yes-green?colorA=434c5e&colorB=ff59f9&style=flat-square'>
	<img src='https://img.shields.io/github/last-commit/The-Repo-Club/proctl?colorA=434c5e&colorB=ff59f9&style=flat-square'>
	<img src='https://img.shields.io/github/repo-size/The-Repo-Club/proctl?colorA=434c5e&colorB=ff59f9&style=flat-square'>
	<img src='https://img.shields.io/github/issues/The-Repo-Club/proctl?colorA=434c5e&colorB=ff59f9&style=flat-square'>
	<img src='https://img.shields.io/github/stars/The-Repo-Club/proctl?colorA=434c5e&colorB=ff59f9&style=flat-square'>
	<img src='https://img.shields.io/github/forks/The-Repo-Club/proctl?colorA=434c5e&colorB=ff59f9&style=flat-square'>
	<img src="https://badges.pufler.dev/visits/The-Repo-Club/proctl?color=ff59f9&labelColor=434c5e&style=flat-square"/>
	<img src='https://img.shields.io/github/commit-activity/m/The-Repo-Club/proctl?colorA=434c5e&colorB=ff59f9&style=flat-square'>
</p>

# Dependencies

- coreutils for stuff like `head`, `awk`, ...
- fzf (optional) for `-pick-license`, `-pick-language` flags
- git (optional) for generating info in default config automatically
- ncurses (optional) for colours (`PROCTL_COLOURS=1`) using `tput`

# Installation

# How do I install proctl?

[![basher install](https://www.basher.it/assets/logo/basher_install.svg)](https://github.com/basherpm/basher)

### on Arch BTW?

Follow one of the 3 simple ways to install below.

Download: [PKGBUILD](https://github.com/The-Repo-Club/ArchAUR/raw/main/proctl/PKGBUILD) and make with `makepkg -sfi`

Install: [Custom Repo](https://arch.therepo.club/) then just use `pacman -S proctl`

AUR: [YAY](https://aur.archlinux.org/packages/proctl) just use `yay -S proctl`

## Manual

```bash
git clone https://github.com/The-Repo-Club/proctl
cd proctl
sudo make install
```

# Configuration

Configuration can be found in `~/.config/license.conf` and `~/.config/license.conf`, it is automatically
generated on first launch or with the flag `-new-config`

Example config:

```sh
#!/usr/bin/env sh

export AUTHOR_NAME='Joe Doe'
export AUTHOR_EMAIL='joe@doe.com'
export AUTHOR_WEBSITE='https://joe.doe/'
export TEMPLATE_DIR='/usr/share/proctl'
```
