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

#Loads datafile
source DATA

#Defines variavle with date
time=`date`

#Checks wether time variables are load from datafile
#If not sets the variable to "never"

if [ "$compl" = "" ]
then
compl="Never"
fi

if [ "$main" = "" ]
then
main="Never"
fi

if [ "$creative" = "" ]
then
creative="Never"
fi

if [ "$pandora" = "" ]
then
pandora="Never"
fi

if [ "$island" = "" ]
then
island="Never"
fi

if [ "$museum" = "" ]
then
museum="Never"
fi

if [ "$event" = "" ]
then
event="Never"
fi

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
echo "                                                        "
echo "Welcome to sord\e[1;92m1\033[0md's simple backup script."
echo "This script will download all worlds from"
echo "          the chosen server(s).          "
echo "                                         "
echo "      \e[1;92m [1] \033[0m Complete Backup (~N/A GB)  -  $compl         "
echo "      \e[1;92m [2] \033[0m Main Server     (~N/A GB)  -  $main          "
echo "      \e[1;92m [3] \033[0m Creative        (~26  GB)  -  $creative      "
echo "      \e[1;92m [4] \033[0m Pandora         (~N/A GB)  -  $pandora       "
echo "      \e[1;92m [5] \033[0m Island          (~N/A GB)  -  $island        "
echo "      \e[1;92m [6] \033[0m Museum          (~N/A GB)  -  $museum        "
echo "      \e[1;92m [7] \033[0m Event           (~N/A GB)  -  $event         "
echo "      \e[1;92m [8] \033[0m Quit                                         "



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
      rm -r servers-old
      mv servers/ servers-old
      scp -i $private -P $port -r $server:'servers/' servers/
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
      rm -r main-old
      mv main/ main-old
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
      rm -r creative-old
      mv creative/ creative-old
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
      rm -r pandora-old
      mv pandora/ pandora-old
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
      rm -r island-old
      mv island/ island-old
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
      rm -r museum-old
      mv museum/ museum-old
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
      rm -r event-old
      mv event/ event-old
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
