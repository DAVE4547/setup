pkg="npm"
if  dpkg --get-selections | grep -q "^$pkg[[:space:]]*install$" >/dev/null
then
  echo -e "\e[1mInstalling npm Packages
  \e[2m"
  sudo npm i -g pm2 nodemon express-generator prettier typescript
  echo -e "\e[1mInstalled packages!\e[0m"
else
  echo -e "\e[1mInstalling node and npm
  \e[0m"
  bash node.sh
  echo -e "\e[1mInstalling npm Packages
  \e[0m"
  sudo npm i -g pm2 nodemon express-generator prettier typescript
  echo -e "\e[1mInstalled packages!\e[0m"
fi