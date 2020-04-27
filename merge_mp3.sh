#!/bin/bash

if [[ "$1" == "" || "$2" == "" ]];then
echo "Usage :"
echo "$0 [numero_dictée] [numéro_dernier_segment]"
exit 1
fi

NUM=$1
BASE="dictee${NUM}-"
SEG=0
LAST=$2
CHAINE=""

while [ $SEG -lt $LAST ]
do
  SEG=$(( $SEG + 1 ))
  echo "$BASE$SEG"
  CHAINE="$CHAINE$BASE${SEG}.mp3"
  if [[ $SEG -lt $LAST ]];then
    CHAINE="$CHAINE|"
  fi
done
# echo $CHAINE # Pour débogage

ffmpeg -v quiet -i "concat:$CHAINE" -acodec copy "dictee${NUM}.mp3"