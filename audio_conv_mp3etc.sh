#!/bin/sh

audio() {

which ffmpeg
if [[ $? -eq 1 ]];then
  echo "Veuillez installer ffmpeg."
  exit 1
fi

for fic in *.mp3
do echo "Conversion de ${fic} en ${fic%.mp3}.aac"
ffmpeg -v quiet -n -i "$fic" "${fic%.mp3}.aac"
echo "OK"
done

for fic in *.mp3
do echo "Conversion de ${fic} en ${fic%.mp3}.ogg"
ffmpeg -v quiet -n -i "$fic" "${fic%.mp3}.ogg"
echo "OK"
done

return 0

}

audio && ls -l *.mp3 *.aac *.ogg
