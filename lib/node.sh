# Installation of node on debian and ubuntu from nodesource

apt ()
{
  read -p "y | n > " update
  echo -e "\e[2m"

  if [ $update = "y" ]
  then
    sudo apt-get update
    sudo apt-get install nodejs
    sudo apt-get install npm
  elif [ $update = "n" ]
  then
    sudo apt-get install nodejs
    sudo apt-get install npm
  else
  echo "$update is not a valid answere!"
  fi

  echo -e "\e[0m"
}

echo -e "\e[1mUpdate apt? <y/n>\e[0m"
apt

echo -e "\e[1mInstalled node.js and npm!"
node -v
npm -v
echo -e "\e[0m"
