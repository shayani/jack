if [ ! -f "/tmp/JetBrainsMono.zip" ]; then
  # Download JetBrains Mono
  wget -O /tmp/JetBrainsMono.zip https://github.com/JetBrains/JetBrainsMono/releases/download/v2.242/JetBrainsMono-2.242.zip
  
  # Extract the font files
  unzip /tmp/JetBrainsMono.zip -d /tmp/JetBrainsMono
fi


# Ensure the local fonts directory exists
mkdir -p ~/.local/share/fonts

# Move the font files to the fonts directory
cp /tmp/JetBrainsMono/fonts/ttf/*.ttf ~/.local/share/fonts/

# Update the font cache
fc-cache -f -v

echo "JetBrains Mono font installed successfully."
