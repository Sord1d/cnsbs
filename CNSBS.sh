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


FunctionStartup(){
	#Loads datafile if it exists
	clear
	echo "\e[1m[debug info]"

	if [ -f "modules/savefile" ]
	then
		. ./modules/savefile
		echo "\e[1;92msavefile found and loaded"
	else
		mkdir modules
		echo "\e[1;91mno savefile found"
	fi

	#Failsafe - If an old backup folder exists, but no current one, the old one will be copied
	echo "\033[0m\e[1mchecking backup-folder integrity - please stand by"

	if [ -d "main-old" ]
	then
	 	if [ -d "main" ]
	 	then
	 		echo "\e[1;92mmain folder found"
	 	else
	 		echo "\e[1;91mmain folder missing, but main-old was found - restoring..."
	 		cp -r main-old main
	 		echo "\e[1;92mmain folder restored"
	 	fi
	fi
	
	if [ -d "creative-old" ]
	then
		 if [ -d "creative" ]
	 	then
	 		echo "\e[1;92mcreative folder found"
	 	else
	 		echo "\e[1;91mcreative folder missing, but creative-old was found - restoring..."
	 		cp -r creative-old creative
	 		echo "\e[1;92mcreative folder restored"
	 	fi
	fi
	 
	if [ -d "pandora-old" ]
	then
	 	if [ -d "pandora" ]
		then
	 		echo "\e[1;92mpandora folder found"
	 	else
	 		echo "\e[1;91mpandora folder missing, but pandora-old was found - restoring..."
	 		cp -r pandora-old pandora
	 		echo "\e[1;92mpadora folder restored"
	 	fi
	fi

	if [ -d "island-old" ]
	then
		if [ -d "island" ]
		then
			echo "\e[1;92misland folder found"
		else
			echo "\e[1;91misland folder missing, but island-old was found - restoring..."
	 		cp -r island-old island
			echo "\e[1;92misland folder restored"
		fi
	fi
	
	if [ -d "museum-old" ]
	then
		if [ -d "museum" ]
	 	then
	 		echo "\e[1;92mmuseum folder found"
	 	else
	 		echo "\e[1;91mmuseum folder missing, but museum-old was found - restoring..."
	 		cp -r museum-old museum
	 		echo "\e[1;92mmuseum folder restored"
	 	fi
	fi
	
	if [ -d "event-old" ]
	then
	 
	 	if [ -d "event" ]
		then
			echo "\e[1;92mevent folder found"
		else
			echo "\e[1;91mevent folder missing, but pandora-old was found - restoring..."
			cp -r event-old event
			echo "\e[1;92mevent folder restored"
	 	fi
	fi
	
	if [ -d "servers-old" ]
	then
		if [ -d "servers" ]
	 	then
	 		echo "\e[1;92mservers folder found"
		else
	 		echo "\e[1;91mservers folder missing, but servers-old was found - restoring..."
	 		cp -r servers-old servers
	 		echo "\e[1;92mservers folder restored"
	 	fi
	fi

	#Wait three seconds for debug screen
	sleep 3.5



	#Checks whether the variables are empty. If they are they'll be set to "never"

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
	
		if [ "$compl" = "" ]
	then
		compl="Never"
	fi
	
	FunctionMainMenu
}


FunctionASCII(){
	clear
	echo "\e[1;92m ▄▄▄▄▄▄▄ ▄▄    ▄ \033[0m▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄    ▄▄   ▄▄    ▄▄▄▄▄▄▄      ▄▄▄▄▄▄▄ "
	echo "\e[1;92m█       █  █  █ █\033[0m       █  ▄    █       █  █  █ █  █  █       █    █  ▄    █" 
	echo "\e[1;92m█       █   █▄█ █\033[0m  ▄▄▄▄▄█ █▄█   █  ▄▄▄▄▄█  █  █▄█  █  █▄▄▄▄   █    █ █ █   █"
	echo "\e[1;92m█     ▄▄█       █\033[0m █▄▄▄▄▄█       █ █▄▄▄▄▄   █       █   ▄▄▄▄█  █    █ █ █   █"
	echo "\e[1;92m█    █  █  ▄    █\033[0m▄▄▄▄▄  █  ▄   ██▄▄▄▄▄  █  █       █  █ ▄▄▄▄▄▄█▄▄▄ █ █▄█   █"
	echo "\e[1;92m█    █▄▄█ █ █   █\033[0m▄▄▄▄▄█ █ █▄█   █▄▄▄▄▄█ █   █     █   █ █▄▄▄▄▄█   ██       █"
	echo "\e[1;92m█▄▄▄▄▄▄▄█▄█  █▄▄█\033[0m▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█    █▄▄▄█    █▄▄▄▄▄▄▄█▄▄▄██▄▄▄▄▄▄▄█"
	echo ""
	echo "                 \e[1;92mC\033[0mube-\e[1;92mN\033[0mation Simple Backup Script \e[1;92mVersion 2.0\033[0m"
	echo "                                                        "
}


FunctionCheckSFTP(){
		
	if ! [ -f "modules/sftp" ]
	then
		echo "   \e[37m [1]  Options 3 - 6   (~N/A GB)  -  Not installed"
	else
		echo "   \e[1;92m [1] \033[0m Options 3 - 6   (~N/A GB)  "
	fi
}


FunctionSave(){
	  #starting saving routine for whatever reason
	echo "saving..."
	rm modules/savefile
	echo "compl='$compl'" >> modules/savefile
	echo "main='$main'" >> modules/savefile
	echo "creative='$creative'" >> modules/savefile
	echo "pandora='$pandora'" >> modules/savefile
	echo "island='$island'" >> modules/savefile
	echo "museum='$museum'" >> modules/savefile
	echo "event='$event'" >> modules/savefile

	sleep 3
	
	FunctionStartup
}


FunctionMainMenu(){
	#Display start menu
	FunctionASCII
	echo "                 Welcome to sord\e[1;92m1\033[0md's simple backup script."
	echo "                 This script will download all worlds from"
	echo "                          the chosen server(s).          "
	echo "                                         "
	FunctionCheckSFTP
	echo "   \e[1;92m [2] \033[0m Complete Backup (~N/A GB)  -  $compl         "
	echo "   \e[1;92m [3] \033[0m Main Server     (~N/A GB)  -  $main          "
	echo "   \e[1;92m [4] \033[0m Creative        (~26  GB)  -  $creative      "
	echo "   \e[1;92m [5] \033[0m Pandora         (~N/A GB)  -  $pandora       "
	echo "   \e[1;92m [6] \033[0m Island          (~N/A GB)  -  $island        "
	echo "   \e[1;92m [7] \033[0m Museum          (~N/A GB)  -  $museum        "
	echo "   \e[1;92m [8] \033[0m Event           (~N/A GB)  -  $event         "
	echo "   \e[1;92m [9] \033[0m Quit                                         "
	echo " Space on drive: $free out of $disk2" 
	
	# Running loop until option is selected
	while :
	do

	# reading choice
	read mode

	# case statement is used to compare one value with the multiple cases
	case $mode in
	#backup the servers with user worlds
		1)
			Function3To6;;
		2)
  			FunctionComplete;;
		3)
     			FunctionMain;;
		4)
			FunctionCreative;;
		5)
			FunctionPandora;;
		6)
			FunctionIsland;;
		7) 
			FunctionMuseum;;
		8)
  			FunctionEvent;;
		9)
  			exit;;
	esac
		echo -n "Please enter valid choice: "
	done
}


Function3To6(){

	FunctionASCII
	
	echo "                                         "
	echo "\e[1;92mMain / Creative / Pandora / Island server selected\033[0m"
	echo "Trying to connect to server"
	echo "\e[0;92mPress ctrl + c to cancel\033[0m"
	
	#Including SFTP Download script
	if [ -f "modules/sftp" ]
	then
		program=1
		. ./modules/sftp
	else
		echo "\e[1;91mThis module is not installed. You can download it here:"
		echo "\e[1;91mhttps://github.com/sord1d/cnsbs"
		
		sleep 3
		
		FunctionMainMenu
	fi
	
	echo "\e[1;92mOperation complete.\033[0m"
	
	main=`date`
	creative=`date`
	pandora=`date`
	island=`date`
	
	FunctionSave
	
}



FunctionComplete(){  
 
	FunctionASCII

	echo "                                         "
	echo "\e[1;92mComplete server selected\033[0m"
	echo "Trying to connect to server"
	echo "\e[0;92mPress ctrl + c to cancel\033[0m"

	rm -r servers-old
	mv servers/ servers-old

	scp -i $private -P $port -r $server:'servers/' servers/

	echo "\e[1;92mOperation complete.\033[0m"

	compl=`date`

     	FunctionSave
	
}


FunctionMain(){  

	FunctionASCII
	
	echo "                                         "
	echo "\e[1;92mMain server selected\033[0m"
	echo "Trying to connect to server"
	echo "\e[0;92mPress ctrl + c to cancel\033[0m"
	
	rm -r main-old
	mv main/ main-old
	
	scp -i $private -P $port -r $server:servers/main/worlds main/
	
	echo "\e[1;92mOperation complete.\033[0m"
	
	main=`date`
	
	FunctionSave
	
}


FunctionCreative(){
  # backup creative
	
	FunctionASCII
	
	echo "                                         "
	echo "\e[1;92mCreative server selected\033[0m"
	echo "Trying to connect to server "
	echo "\e[0;92mPress ctrl + c to cancel\033[0m"
	
	rm -r creative-old
	mv creative/ creative-old
	
	scp -i $private -P $port -r $server:servers/creative/worlds creative/
	
	echo "\e[1;92mOperation complete.\033[0m"
	
	creative=`date`
	
	FunctionSave
	
}


FunctionPandora(){


	FunctionASCII
	
	echo "                                         "
	echo "\e[1;92mPandora server selected\033[0m"
	echo "Trying to connect to server"
	echo "\e[0;92mPress ctrl + c to cancel\033[0m"

	rm -r pandora-old
	mv pandora/ pandora-old

	scp -i $private -P $port -r $server:servers/pandora/worlds pandora/
	echo "\e[1;92mOperation complete.\033[0m"

	pandora=`date`
	
	FunctionSave
	
}


FunctionIsland(){

	FunctionASCII
	
	echo "                                         "
	echo "\e[1;92mIsland server selected\033[0m"
	echo "Trying to connect to server"
	echo "\e[0;92mPress ctrl + c to cancel\033[0m"
	
	rm -r island-old
	mv island/ island-old
	
	scp -i $private -P $port -r $server:servers/bentobox/worlds island/
	
	echo "\e[1;92mOperation complete.\033[0m"

	island=`date`
	
	FunctionSave

}


FunctionMuseum(){

	FunctionASCII

	echo "                                         "
	echo "\e[1;92Museum server selected\033[0m"
	echo "Trying to connect to server"
	echo "Press ctrl + c to cancel\033[0m"
	
	rm -r museum-old
	mv museum/ museum-old
	
	scp -i $private -P $port -r $server:servers/museum/worlds museum/
	
	echo "\e[1;92mOperation complete.\033[0m"

	museum=`date`
	
	FunctionSave
	
}


FunctionEvent(){
	
	FunctionASCII
	
	echo "                                         "
	echo "\e[1;92mEvent server selected\033[0m"
	echo "Trying to connect to server"
	echo "\e[0;92mPress ctrl + c to cancel\033[0m"
	
	rm -r event-old
	mv event/ event-old
	
	scp -i $private -P $port -r $server:servers/event/worlds event/
	
	echo "\e[1;92mOperation complete.\033[0m"

	event=`date`

	FunctionSave
	
}

FunctionStartup
