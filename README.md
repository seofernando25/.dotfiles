# Dotfiles

This is my personal dotfiles repository. It contains configuration files for various programs and tools I use on a daily basis.

I don't use XOrg, so there are no XOrg configuration files here. I use Wayland+Sway instead.

## .personal template

To be created at `~/`

```bash
# Personal and sensitive information
# DO NOT COMMIT THIS FILE

export GH_USERNAME=$GH_TOKEN
export GH_USER=$GH_TOKEN

# Your SSH key https://github.com/settings/keys
export GH_TOKEN=$GH_TOKEN
export GITHUB_TOKEN=$GH_TOKEN
export OUTSTEM_AWS_ACCESS_KEY_ID=$AWS_ACCESS_ID
export OUTSTEM_AWS_ACCESS_KEY_SECRET=$AWS_ACCESS_SECRET
```

## TODOS

- [x] Script to export and restore flatpak apps
- [x] Script to install yay from src
- [x] Install symlink script
- [ ] List of installed apps (from pacman/yay)
- [ ] Script to install apps from list
- [ ] 