#!/bin/sh

TRASH_OFF=YES

cd CORBEILLE || exit 1
rm *.m4a
rm *.mp3
rm *.aac
rm *.ogg
cd .. || exit 1