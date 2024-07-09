# custom aliases
alias lg='lazygit'
alias bye='systemctl poweroff'
alias cls='clear' # it's easier
alias log='sudo journalctl > journal.txt'

# deno in PATH
. "$HOME/.cargo/env"
export DENO_INSTALL="/$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="/home/username/.deno/bin:$PATH"

# keychain config
eval `keychain --eval id_ed25519`
clear
