#!/bin/sh

echo "Starting JMusicBot"

#VER=$(curl --silent "https://api.github.com/repos/jagrosh/MusicBot/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')

#if [ ! -f JMusicBot-$VER.jar ]; then	
wget https://github.com/jagrosh/MusicBot/releases/download/0.3.9/JMusicBot-0.3.9.jar
#fi

java -Dnogui=true -Dconfig=/config/config.txt -jar JMusicBot-0.3.9.jar 
