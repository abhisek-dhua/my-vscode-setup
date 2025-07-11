#!/bin/bash

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ZIP_DIR="${SCRIPT_DIR}/Nerd Fonts Zip"
EXTRACT_BASE="${SCRIPT_DIR}/Nerd Fonts"


# Get user name
read -p "Please enter your username: " TARGET_USER;

if id -u "$TARGET_USER" >/dev/null 2>&1; then
    echo "✅ User $TARGET_USER exists. Proceeding...";
    mkdir -p "$ZIP_DIR"
    mkdir -p "$EXTRACT_BASE"
else
    echo "❌ The username '$TARGET_USER' does not exist.";
    exit 1;
fi

# Target fonts directory in user's home
FONT_DIR="/home/$TARGET_USER/.fonts"
mkdir -p "$FONT_DIR"

# Fonts to download
declare -a fonts=(
  "JetBrainsMono"
  "FiraCode"
  "Hack"
  "CascadiaCode"
  "Meslo"
  "UbuntuMono"
)

# Nerd Fonts latest release base URL
BASE_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download"

echo "🔽 Downloading and Installing Nerd Fonts..."

for font in "${fonts[@]}"; do
  ZIP_PATH="${ZIP_DIR}/${font}.zip"
  EXTRACT_DIR="${EXTRACT_BASE}/${font}"

  echo "📦 Downloading: $font..."
  wget -q --show-progress "$BASE_URL/${font}.zip" -O "$ZIP_PATH"

  echo "📂 Extracting to: $EXTRACT_DIR..."
  mkdir -p "$EXTRACT_DIR"
  unzip -o "$ZIP_PATH" -d "$EXTRACT_DIR"

  echo "📤 Copying .ttf/.otf files to: $FONT_DIR..."
  find "$EXTRACT_DIR" -type f \( -iname "*.ttf" -o -iname "*.otf" \) -exec cp {} "$FONT_DIR" \;

  echo "✅ $font installed."
done

# Refresh font cache
echo "🔄 Updating font cache..."
fc-cache -fv

# Remove zip directory
rm -rf "$ZIP_DIR"

echo "🎉 All Nerd Fonts installed successfully!"

