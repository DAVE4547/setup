ask ()
{
  read -p "1/2/3/4/a > " res

  if [ res = 1 ]
  then
    bash ./lib/node.sh
    exit 0
  elif [ $res = 2 ]
  then
    echo -e "\e[1mInstalling docker!\e[0m"
    bash ./lib/docker.sh
    exit 0
  elif [ $res = 3 ]
  then
    bash ./lib/npmPackages.sh
    exit 0
  elif [ $res = 4 ]
  then
    bash ./lib/git.sh
    exit 0
  elif [ $res = a ]
  then
    echo -e "\e[1mInstalling all software!\e[0m"

    bash ./lib/node.sh
    echo -e "\e[1mInstalling docker!
    \e[0m"
    bash ./lib/docker.sh
    bash ./lib/npmPackages.sh
    bash ./lib/git.sh
    exit 0
  fi
}

echo -e "\e[1mWhat would you like to install?
  1> node and npm
  2> docker
  3> global npm packages
  4> git
  a> all
\e[0m"

ask
