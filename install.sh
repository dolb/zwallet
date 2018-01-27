DIR=$(dirname ${0})
ME="$(whoami)"

cat Dockerfile-template | sed "s/___ME___/$ME/g" > Dockerfile

if [ "$(command -v docker)" ]; then
  echo "Installing wallet on the current docker host"
else
  echo "docker deamon is required tu run this container - installing"

  curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
  chmod +x /tmp/docker-machine &&
  sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

  adduser $ME docker
  docker-machine create localdocker

fi


chmod +x $DIR/docker-rebuild-and-restart.sh
cd $DIR

mkdir zclassic/.zclassic &>/dev/null
mkdir zclassic/.zcash-params &>/dev/null
mkdir zclassic/git &>/dev/null
mkdir zclassic/backup &>/dev/null
mkdir zclassic/electrumx &>/dev/null


./docker-rebuild-and-restart.sh $ME

echo "Installation complete - adding 'helperscripts' to path"

if [ ! "$(echo $PATH | grep zwalletscripts)" ]; then
  FULLPTH="$(pwd)"
  chmod +x $FULLPTH/zclassic/zwalletscripts/*
  echo export PATH='$PATH'":$FULLPTH/zclassic/zwalletscripts" >> $HOME/.bashrc
  export PATH='$PATH'":$FULLPTH/zclassic/zwalletscripts"
  echo "PATH EXTENDED"
fi
