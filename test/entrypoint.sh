#!/usr/bin/env sh

curl -sfL https://git.io/chezmoi | sh
/bin/chezmoi init https://github.com/Gazorby/dotfiles.git --config /chezmoi.toml
sed -i '/^.*starship init fish.*$/d' ~/.local/share/chezmoi/private_dot_config/private_fish/config.fish

exec "$@"
