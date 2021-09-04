#!/bin/sh

  #####  #     #  #####  ######   #####  
 #     # ##    # #     # #     # #     # 
 #       # #   # #       #     # #       
 #       #  #  #  #####  ######   #####  
 #       #   # #       # #     #       # 
 #     # #    ## #     # #     # #     # 
  #####  #     #  #####  ######   #####  

#config stuff
#Enter path of private key
private="path/to/private/"
#Enter the server's scp port
port="22"
#Enter server or user@server
server="user@server.tld"


#code stuff
#Display start menu
clear
echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
echo "\e[1;92m #     # ##    #\033[0m #     # #     # #     # "
echo "\e[1;92m #       # #   #\033[0m #       #     # #       "
echo "\e[1;92m #       #  #  #\033[0m  #####  ######   #####  "
echo "\e[1;92m #       #   # #\033[0m       # #     #       # "
echo "\e[1;92m #     # #    ##\033[0m #     # #     # #     # "
echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
echo "  \e[1;92mC\033[0mube-\e[1;92mN\033[0mation Simple Backup Script \e[1;92mV2.0-DEV\033[0m"
echo "                                         "
echo "Welcome to sord\e[1;92m1\033[0md's simple backup script."
echo "This script will download all worlds from"
echo "          the chosen server(s).          "
echo "                                         "
echo "      \e[1;92m [1] \033[0m Complete Backup (~N/A GB)      "
echo "      \e[1;92m [2] \033[0m Main Server     (~N/A GB)      "
echo "      \e[1;92m [3] \033[0m Creative        (~26  GB)      "
echo "      \e[1;92m [4] \033[0m Pandora         (~N/A GB)      "
echo "      \e[1;92m [5] \033[0m Island          (~N/A GB)      "
echo "      \e[1;92m [6] \033[0m Museum          (~N/A GB)      "
echo "      \e[1;92m [7] \033[0m Event           (~N/A GB)      "
echo "      \e[1;92m [8] \033[0m Quit                           "



# Running loop until option is selected
while :
do


# reading choice
read mode

# case statement is used to compare one value with the multiple cases
case $mode in
  # backup everything //To Do
  1)    
      clear
      echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
      echo "\e[1;92m #     # ##    #\033[0m #     # #     # #     # "
      echo "\e[1;92m #       # #   #\033[0m #       #     # #       "
      echo "\e[1;92m #       #  #  #\033[0m  #####  ######   #####  "
      echo "\e[1;92m #       #   # #\033[0m       # #     #       # "
      echo "\e[1;92m #     # #    ##\033[0m #     # #     # #     # "
      echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
      echo "  \e[1;92mC\033[0mube-\e[1;92mN\033[0mation Simple Backup Script \e[1;92mCV2.0-DEV\033[0m"
      echo "                                         "
      echo "\e[1;92mMain server selected\033[0m"
      echo "Trying to connect to server"
      echo "\e[0;92mPress ctrl + c to cancel\033[0m"
      scp -i $private -P $port -r $server:'servers/main/worlds servers/event/worlds servers/creative/worlds servers/pandora/worlds servers/bentobox/worlds servers/museum/worlds' servers/
      echo "\e[1;92mOperation complete.\033[0m"
      echo "exiting..."
      exit;;
  # backup main
  2)  
      clear
      echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
      echo "\e[1;92m #     # ##    #\033[0m #     # #     # #     # "
      echo "\e[1;92m #       # #   #\033[0m #       #     # #       "
      echo "\e[1;92m #       #  #  #\033[0m  #####  ######   #####  "
      echo "\e[1;92m #       #   # #\033[0m       # #     #       # "
      echo "\e[1;92m #     # #    ##\033[0m #     # #     # #     # "
      echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
      echo "  \e[1;92mC\033[0mube-\e[1;92mN\033[0mation Simple Backup Script \e[1;92mCV2.0-DEV\033[0m"
      echo "                                         "
      echo "\e[1;92mMain server selected\033[0m"
      echo "Trying to connect to server"
      echo "\e[0;92mPress ctrl + c to cancel\033[0m"
      scp -i $private -P $port -r $server:servers/main/worlds main/
      echo "\e[1;92mOperation complete.\033[0m"
      echo "exiting..."
      exit;;
  # backup creative
  3)  
      clear
      echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
      echo "\e[1;92m #     # ##    #\033[0m #     # #     # #     # "
      echo "\e[1;92m #       # #   #\033[0m #       #     # #       "
      echo "\e[1;92m #       #  #  #\033[0m  #####  ######   #####  "
      echo "\e[1;92m #       #   # #\033[0m       # #     #       # "
      echo "\e[1;92m #     # #    ##\033[0m #     # #     # #     # "
      echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
      echo "  \e[1;92mC\033[0mube-\e[1;92mN\033[0mation Simple Backup Script \e[1;92mCV2.0-DEV\033[0m"
      echo "                                         "
      echo "\e[1;92mCreative server selected\033[0m"
      echo "Trying to connect to server "
      echo "\e[0;92mPress ctrl + c to cancel\033[0m"
      scp -i $private -P $port -r $server:servers/creative/worlds creative/
      echo "\e[1;92mOperation complete.\033[0m"
      echo "exiting..."
      exit;;
  # backup pandora
  4) 
      clear
      echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
      echo "\e[1;92m #     # ##    #\033[0m #     # #     # #     # "
      echo "\e[1;92m #       # #   #\033[0m #       #     # #       "
      echo "\e[1;92m #       #  #  #\033[0m  #####  ######   #####  "
      echo "\e[1;92m #       #   # #\033[0m       # #     #       # "
      echo "\e[1;92m #     # #    ##\033[0m #     # #     # #     # "
      echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
      echo "  \e[1;92mC\033[0mube-\e[1;92mN\033[0mation Simple Backup Script \e[1;92mCV2.0-DEV\033[0m"
      echo "                                         "
      echo "\e[1;92mPandora server selected\033[0m"
      echo "Trying to connect to server"
      echo "\e[0;92mPress ctrl + c to cancel\033[0m"
      scp -i $private -P $port -r $server:servers/pandora/worlds pandora/
      echo "\e[1;92mOperation complete.\033[0m"
      echo "exiting..."
      exit;;
  # backup island
  5) 
      clear
      echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
      echo "\e[1;92m #     # ##    #\033[0m #     # #     # #     # "
      echo "\e[1;92m #       # #   #\033[0m #       #     # #       "
      echo "\e[1;92m #       #  #  #\033[0m  #####  ######   #####  "
      echo "\e[1;92m #       #   # #\033[0m       # #     #       # "
      echo "\e[1;92m #     # #    ##\033[0m #     # #     # #     # "
      echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
      echo "  \e[1;92mC\033[0mube-\e[1;92mN\033[0mation Simple Backup Script \e[1;92mCV2.0-DEV\033[0m"
      echo "                                         "
      echo "\e[1;92mIsland server selected\033[0m"
      echo "Trying to connect to server"
      echo "\e[0;92mPress ctrl + c to cancel\033[0m"
      scp -i $private -P $port -r $server:servers/bentobox/worlds island/
      echo "\e[1;92mOperation complete.\033[0m"
      echo "exiting..."
      exit;;
  # backup museum
  6)  
      clear
      echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
      echo "\e[1;92m #     # ##    #\033[0m #     # #     # #     # "
      echo "\e[1;92m #       # #   #\033[0m #       #     # #       "
      echo "\e[1;92m #       #  #  #\033[0m  #####  ######   #####  "
      echo "\e[1;92m #       #   # #\033[0m       # #     #       # "
      echo "\e[1;92m #     # #    ##\033[0m #     # #     # #     # "
      echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
      echo "  \e[1;92mC\033[0mube-\e[1;92mN\033[0mation Simple Backup Script \e[1;92mCV2.0-DEV\033[0m"
      echo "                                         "
      echo "\e[1;92Museum server selected\033[0m"
      echo "Trying to connect to server"
      echo "Press ctrl + c to cancel\033[0m"
      scp -i $private -P $port -r $server:servers/museum/worlds museum/
      echo "\e[1;92mOperation complete.\033[0m"
      echo "exiting..."
      exit;;
  # backup event
  7)  
      clear
      echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
      echo "\e[1;92m #     # ##    #\033[0m #     # #     # #     # "
      echo "\e[1;92m #       # #   #\033[0m #       #     # #       "
      echo "\e[1;92m #       #  #  #\033[0m  #####  ######   #####  "
      echo "\e[1;92m #       #   # #\033[0m       # #     #       # "
      echo "\e[1;92m #     # #    ##\033[0m #     # #     # #     # "
      echo "\e[1;92m  #####  #     #\033[0m  #####  ######   #####  "
      echo "  \e[1;92mC\033[0mube-\e[1;92mN\033[0mation Simple Backup Script \e[1;92mCV2.0-DEV\033[0m"
      echo "                                         "
      echo "\e[1;92mEvent server selected\033[0m"
      echo "Trying to connect to server"
      echo "\e[0;92mPress ctrl + c to cancel\033[0m"
      scp -i $private -P $port -r $server:servers/event/worlds event/
      echo "\e[1;92mOperation complete.\033[0m"
      echo "exiting..."
      exit;;
  # Exit
  8)  echo "Terminating..."
      exit;;
  # Default Pattern
  *) echo "invalid option";;
  
esac
  echo -n "Please enter valid choice: "
done
