docker run -d \
  --name='telly-$PROVIDER' \
  --net='bridge' \
  -e TZ="America/Chicago" \
  -p '6077:6077/tcp' \
  -v ${PWD}/telly.config.toml:/etc/telly/telly.config.toml \
  --restart unless-stopped \
  tellytv/telly:dev-ffmpeg
  
docker logs -f telly-$PROVIDER