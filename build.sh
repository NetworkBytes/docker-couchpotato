VERSION=1
NAME=couchpotato
IMGNAME=networkbytes/$NAME:v$VERSION

docker build -t $IMGNAME .

