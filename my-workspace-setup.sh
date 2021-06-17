sudo apt-get update -y
sudo apt-get upgrade -y



sudo apt install git wget -y



git config --global credential.helper store

wget https://raw.githubusercontent.com/midnqp/midnqp/main/cdn/txt/vimrc
mv vimrc ~/.vimrc
