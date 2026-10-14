#!/bin/bash
# Instala (ou atualiza) o Clipo a partir da última versão no GitHub.
# Uso: curl -fsSL https://raw.githubusercontent.com/jhoff66/Clipo/main/install.sh | bash
set -euo pipefail

URL="https://github.com/jhoff66/Clipo/releases/latest/download/Clipo.zip"

major=$(sw_vers -productVersion | cut -d. -f1)
if [ "$major" -lt 13 ]; then
    echo "O Clipo precisa do macOS 13 ou superior (este Mac tem $(sw_vers -productVersion))." >&2
    exit 1
fi

# /Applications quando der para escrever nele; senão, ~/Applications.
dest="/Applications"
if [ ! -w "$dest" ]; then
    dest="$HOME/Applications"
    mkdir -p "$dest"
fi

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

echo "Baixando o Clipo..."
curl -fsSL "$URL" -o "$tmp/Clipo.zip"
ditto -x -k "$tmp/Clipo.zip" "$tmp"

# Fecha a versão aberta, se houver, antes de substituir.
osascript -e 'quit app "Clipo"' >/dev/null 2>&1 || true
pkill -x Clipo >/dev/null 2>&1 || true
sleep 1

rm -rf "$dest/Clipo.app"
ditto "$tmp/Clipo.app" "$dest/Clipo.app"
xattr -dr com.apple.quarantine "$dest/Clipo.app" 2>/dev/null || true

open "$dest/Clipo.app"
echo "Clipo instalado em $dest/Clipo.app e aberto. Procure o clipe na barra de menus."
echo "Para colar sozinho, libere o Clipo em Ajustes do Sistema > Privacidade e Segurança > Acessibilidade."
