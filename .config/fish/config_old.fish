if status is-interactive
    # Commands to run in interactive sessions can go here
end

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"



# opam configuration
source /home/fer/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# pnpm
set -gx PNPM_HOME "/home/fer/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

source ~/.profile