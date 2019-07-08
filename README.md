# mpd-docker
## An mpd docker container for streaming over http
Two outputs over http with a bitrate of 320 or 1411  
Http stream will be on port 8000  
You can connect on port 6600
### Example
docker create \  
--name mpd \  
-p 6600:6600 \  
-p 8000:8000 \  
-v mpdplaylists:/var/lib/mpd/playlists \  
-v /mnt/raid/music:/var/lib/mpd/music \  
--restart unless-stopped \  
mpd:latest   
