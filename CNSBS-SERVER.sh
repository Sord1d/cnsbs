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
echo "  \e[1;92mC\033[0mube-\e[1;92mN\033[0mation Simple Backup Script \e[1;92mV2.0-Server\033[0m"
echo "                                         "
echo "Welcome to sord\e[1;92m1\033[0md's simple backup script."
echo " This script will start a complete server world backup  "
echo "Trying to connect to server"
echo "\e[0;92mPress ctrl + c to cancel\033[0m"
scp -i $private -P $port -r $server:'servers/main/worlds servers/event/worlds servers/creative/worlds servers/pandora/worlds servers/bentobox/worlds servers/museum/worlds' servers/
echo "\e[1;92mOperation complete.\033[0m"
echo "exiting..."
exit;;
