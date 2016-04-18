VERSION=1
NAME=couchpotato
IMGNAME=networkbytes/$NAME:v$VERSION

docker rm $NAME

docker run \
-v /etc/localtime:/etc/localtime:ro \
-v /mnt/share/Media/Transmission/Drop:/Drop \
-v /mnt/share/Media/Movies.unsorted:/Movies.unsorted \
-v /mnt/share/Media/Movies:/Movies \
-v $PWD/config:/config \
-p 5050:5050 \
-d \
--privileged=true \
--name $NAME \
$IMGNAME

