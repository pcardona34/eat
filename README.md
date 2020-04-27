# eat
ejDicto Audio Tools

Just a few set of Bash scripts to make simple audio file conversion. These scripts are used to prepare future milestones of [ejDicto](https://github.com/pcardona34/ejdicto) audio data set. 

fr :
Juste une collection de scripts Bash afin de convertir simplement les fichiers audio prévus dans les prochaines versions de l'application [ejDicto](https://github.com/pcardona34/ejdicto). 

## Prérequis

Pour automatiser la conversion des enregistrements audio, il est 
aussi conseillé d'installer [ffmpeg](https://ffmpeg.org). Vérifiez sa présence :

    `ffmpeg -version`
    
    
## Mode d'emploi

Copiez à la racine du dossier `eat` le ou les fichiers à convertir : 
format mp3 ou m4a.

Exécutez la commande requise afin de cloner cet enregistrement dans 
les autres formats (nécessite la présence de la commande `ffmpeg` dans 
votre système) : voir le détail des commandes disponibles.

### Conversion : de m4a vers mp3

    bash ./audio_conv_m4a2mp3.sh

### Conversion : de mp3 vers ogg et aac

    bash ./audio_conv_mp3etc.sh

### Assembler plusieurs parties de mp3 en un fichier unique

    bash ./merge_mp3.sh
    
### Réduire la taille en supprimant la stéréophonie

    bash ./monoify.sh

### Vider le dossier ./CORBEIILE

    bash ./clean.sh
    
### Publier les fichiers audio vers le dossier relatif 

Le chemin de la cible étant : `../ejdicto/static/audio`

    bash ./publie.sh

## Alternative à ffmpeg : Audacity

+ Vous pouvez aussi convertir votre enregistrement mp3
manuellement aux formats alternatifs `ogg` (Vorbis) et `aac` au moyen du logiciel 
 [audacity](https://audacity.fr), par exemple.