# Restore wal theme
wal -i "$(< "${HOME}/.cache/wal/wal")"

exec i3
