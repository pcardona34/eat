#!/bin/sh


mono() {

which ffmpeg
if [[ $? -eq 1 ]];then
  echo "Veuillez installer ffmpeg."
  exit 1
fi

for fic in *.mp3
do echo "Conversion de ${fic} en version mono."
ffmpeg -v quiet -i ${fic} -b:a 22000 -ac 1 ${fic%.mp3}-mono.mp3
echo "OK"
done

return 0

}

# On exécute la tâche

mono
