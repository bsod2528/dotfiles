PS1='\[\e[1;97m\][\[\e[1;91m\]\u\[\e[1;97m\]@\[\e[1;36m\]\h \[\e[1;34m\]\W\[\e[1;97m\]]\[\e[1;32m\]\$ \[\e[0m\]'

# custom aliases
alias lg='lazygit'
alias bye='systemctl poweroff'
alias cls='clear' # it's easier
alias log='sudo journalctl > journal.txt'
alias update='sudo pacman -Syu' # istg i feel like a genius

# deno in PATH
. "$HOME/.cargo/env"
export DENO_INSTALL="/$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="/home/username/.deno/bin:$PATH"

# keychain config
eval `keychain --eval id_ed25519`
clear

# my vlsi config
# -- for: xschem
function xschem() {
    cd $HOME && cd Binary && cd xschem && cd src
    ./xschem
}

export -f xschem

# -- for: ngspice
# directly run `sudo pacman -S ngspice && ngspice`
