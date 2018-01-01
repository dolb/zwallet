# zwallet

Ok so to keep it brief - zwallet is just sort of an "API" for zclassic wallet. I want to create all in one script for easy wallet setup. Unfortunately to do that I decided to base it on docker platform.


## Getting started

After pulling the repository and extracting its contents to a directory in perfect world running **install.sh** will install docker and virtualbox for you - unfortunately that is not the case here in version **0.0.1** which is what you deal with now :)

In theory the script may install docker host for you, but it is not tested yet (need some time to set up new clean unix distro for testing). It will not install virtual box for you - that is for sure :] I highly recommend starting with docker-machine, as it should set up docker for you on most distros. For more info about virtualbox visit https://www.virtualbox.org/


### Why is it great

Well the answer is pretty simple - it creates virtual machine that installs zclassic wallet for you on one unified virtual environment (which is Ubuntu 16.04 currently) and it sets everything up for you. It is also a good base to adapt it on windows and MacOS later on, as they both support virtualbox and docker. If you had problems setting up your wallet before, then they should be over now :]


### Short how to

Basically I lack a lot of scripts in there, but I will simplify it later on when I have more time. After running **install.sh** script and waiting ages for it to finish (it builds the full node from the scratch) you will have some new scripts added to your path:

- **zwallet** - is basically the same as zcash-cli, but it makes sure the vm, and zcashd is up and running
- **zwalletnode** - lets you start the full node - if you want to see how the syncing is going just go with *zwalletnode* command - it will display the output for you


### Whare are the files stored?

Directories containing valuable data for the node are linked with directories on your disk. You should have zclassic directory created in the main zwallet directory (lets call it **ZWALLET_MAIN_DIR**) - your nodes important files are stored there. Every backup you make (I will try to introduce auto backup later on) will be stored in **ZWALLET_MAIN_DIR/zclassic/backup**.


### Commands?

Use your terminal and type **zwallet help** - that should give you the idea.

The main command you should remember to execute often is:
**zwallet z_exportwallet "NAME"** - it backs up your wallet private keys and stores it in **ZWALLET_MAIN_DIR/zclassic/backup**


### Whats next?

I hope I find some time to write some GUI using the API :] It will take several days to do it and as I have full time job I am dedicated to, that might take ages for me to complete ;) Lets hope I will find time tho ;) The next step would be full installation automation for Linux, and exporting everything to MacOS, as it shouldn't be too difficult (I have to put my hands on a MacOS device first as I simply don't know if the bash interpreter there will get those scripts :))


### Donations

**ZCL** donation address: t1eSZZdy22Dj2n7qdZvyydTcoQDpkpV8VVH (dolb)
