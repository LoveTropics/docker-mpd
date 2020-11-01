# mpd-docker
https://hub.docker.com/r/philipwold/mpd
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
philipwold/mpd:latest
### Example Setup.
- Setup this container on your NAS/File server.
- Setup MPD with regular audio output on your client device.
- Use a script like this to tune into the http stream on your client device
````bash
#!/bin/bash
#written by Philip Woldhek

serverip=<MY-SERVER-IP>

if [ "[playing]" = "$(mpc | sed -n 2p | awk '{print $1;}')" ]
 then
   mpc -h $serverip pause
   mpc stop
   mpc clear
 else
   mpc clear
   mpc add http://$serverip:8000
   mpc -h $serverip play
   mpc play
fi
````
- Edit the config of a mpd client like ncmpcpp to point it to your File server/NAS so you can remotely controll the stream.
- Profit?
### Todo
- [ ] Map alsa to the container so i can plug my amp directly into my NAS. 
