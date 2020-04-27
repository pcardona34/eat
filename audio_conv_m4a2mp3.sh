#!/bin/sh


audio() {

which ffmpeg
if [[ $? -eq 1 ]];then
  echo "Veuillez installer ffmpeg."
  exit 1
fi

for fic in *.m4a
do echo "Conversion de ${fic} en ${fic%.m4a}.mp3"
ffmpeg -v quiet -n -i "$fic" "${fic%.m4a}.mp3"
echo "OK"
done

return 0

}

# On exécute la tâche

audio
