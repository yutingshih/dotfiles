ALIAS_SCRIPTS_DIR=$(dirname "${BASH_SOURCE[0]}")/aliases

for file in "$ALIAS_SCRIPTS_DIR"/*.sh; do
    [ -r "$file" ] && source "$file" && echo "Loaded aliases from $file"
done
