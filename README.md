# CNSBS - The Cube Nation Simple Backup Script
This script was written to comfortably create backups of the cube-nation servers.

How to use:
1) Specity the location of your private key, the ssh port and the login credentials at the top of the script.
2) Run the script with either ./CNSBS.sh or sh CNSBS.sj
3) Select a server

Currently there's no option to back up everything, this will be implemented in a later version

# CNSBS - V 2.0
Currently in development. Will be most likely a rewrite in python3.

Dependencies(So far):

Python 3         _(sudo apt install python3)_

Latest PIP       _(sudo python3 -m pip install -U pip)_

Paramiko Module  _(pip3 install paramiko)_

SCP Module       _(pip3 install scp)_
