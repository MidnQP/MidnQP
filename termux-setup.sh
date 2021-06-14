pkg update -y

pkg i git -y
git config --global credential.helper store


pkg i wget -y
wget https://raw.githubusercontent.com/midnqp/midnqp/main/cdn/txt/termux.properties
mkdir .termux
mv termux.properties .termux
termux-reload-settings


wget https://raw.githubusercontent.com/midnqp/midnqp/main/cdn/txt/colors.properties
mv colors.properties .termux
am broadcast --user 0 -a com.termux.app.reload_style com.termux > /dev/null


pkg i vim -y
