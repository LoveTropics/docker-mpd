# mpd-docker
## an mpd docker container for streaming over http using alpine
two outputs over http with a bitrate of 320 or 1411  
http stream will be on port 8000  
you can connect on port 6600
### example
docker create \  
--name mpd \  
-p 6600:6600 \  
-p 8000:8000 \  
-v mpdplaylists:/var/lib/mpd/playlists \  
-v /mnt/raid/music:/var/lib/mpd/music \  
--restart unless-stopped \  
mpd:latest   
