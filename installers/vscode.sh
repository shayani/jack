file_path="/tmp/code.deb" 

if [ ! -f "$file_path" ]; then
  wget -O $file_path 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'
  sudo apt install -y /tmp/code.deb
else
  echo "VSCode already installed"
fi
