#!/bin/sh
# ParadoksGram: foydalanuvchi uchun o'rnatuvchi (root shart emas)
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
DEST="$HOME/.local/opt/ParadoksGram"
APPS="$HOME/.local/share/applications"
ICONS="$HOME/.local/share/icons/hicolor/256x256/apps"

mkdir -p "$DEST" "$APPS" "$ICONS"
cp "$DIR/Telegram" "$DEST/Telegram"
chmod +x "$DEST/Telegram"
if [ -f "$DIR/paradoksgram.png" ]; then
  cp "$DIR/paradoksgram.png" "$ICONS/paradoksgram.png"
fi
sed "s|@EXEC@|$DEST/Telegram|" "$DIR/paradoksgram.desktop" > "$APPS/paradoksgram.desktop"
update-desktop-database "$APPS" >/dev/null 2>&1 || true
gtk-update-icon-cache -q "$HOME/.local/share/icons/hicolor" >/dev/null 2>&1 || true

echo "ParadoksGram o'rnatildi: $DEST"
echo "Ilovalar menyusidan ochishingiz mumkin."
