#!/bin/bash

TRASH_OFF=YES

SOURCE=.
CIBLE=../ejdicto/static/audio/

for f in $SOURCE/*.mp3 $SOURCE/*.ogg $SOURCE/*.aac
do
  mv --verbose $f $CIBLE
done
