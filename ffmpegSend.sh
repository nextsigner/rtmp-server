#!/bin/bash
#Parámetros
#Ip Ejemplo: 127.0.0.1
#Puerto Ejemplo: 1932
#Clave Ejemplo: AAABBBCCC
#Ubicación de Video Ejemplo: /home/ns/miVideo.mp4

#ffmpeg -re -i "/media/ns/686F8CD568B41F5D/fer_alsina_f1.mp4" -c:v libx264 -preset veryfast -b:v 3000k -maxrate 3000k -bufsize 6000k -c:a aac -b:a 128k -ar 44100 -f flv "rtmp://127.0.0.1:1935/live/streamkey

ffmpeg -re -i $4 -c:v libx264 -preset veryfast -b:v 3000k -maxrate 3000k -bufsize 6000k -c:a aac -b:a 128k -ar 44100 -f flv "rtmp://$1:$2/live/$3"
