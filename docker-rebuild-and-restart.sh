#!/bin/bash

DIR="$(dirname "$0")"

USER="$1"

cd $DIR

FULLPTH="$(pwd)"

docker stop zwallet
docker rm zwallet

docker build -t zwallet .

docker run --user $USER \
    -v $FULLPTH/zclassic/git:/home/$USER/git \
    -v $FULLPTH/zclassic/.zcash-params:/home/$USER/.zcash-params \
    -v $FULLPTH/zclassic/.zclassic:/home/$USER/.zclassic \
    -v $FULLPTH/zclassic/backup:/home/$USER/backup \
    --name=zwallet \
	-d zwallet /bin/bash -c "while true; do sleep 1; done"
#docker exec --user root -it zwallet chown $USER:$USER /home/$USER/
#
docker exec --user $USER -it zwallet /home/$USER/init-wallet.sh
