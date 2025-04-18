# env.nu
#
# Installed by:
# version = "0.103.0"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.

# Path stuff
$env.PATH = ($env.PATH | split row (char esep) | prepend '/opt/homebrew/bin')
$env.config.buffer_editor = "/opt/homebrew/bin/nvim"

# Nushell stuff
$env.config.edit_mode = 'vi'

# Carapace
$env.CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense' # optional
mkdir ~/.cache/carapace
carapace _carapace nushell | save --force ~/.cache/carapace/init.nu

# Vivid
$env.LS_COLORS = (vivid generate gruvbox-dark-soft)

# Zoxide
zoxide init nushell | save -f ~/.zoxide.nu

oh-my-posh init nu
