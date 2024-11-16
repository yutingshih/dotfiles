BASH_ALIASES_PATH=$(readlink -f "${BASH_SOURCE[0]}")
DOTFILES="$(dirname "$(dirname "$BASH_ALIASES_PATH")")"

for aliasfile in "$DOTFILES/alias"/*.sh; do
    [ -r "$aliasfile" ] && source "$aliasfile"
done
