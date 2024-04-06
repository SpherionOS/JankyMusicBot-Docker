# The Jankiest Way To Dockerize JMusicBot


### Docker CLI
```bash
docker run -dit \  
  --name=jmusicbot \  
  -v /path/to/config.txt:/bot/config.txt \
  --restart=unless-stopped \
  twosevenska/jmusicbot:0.3.9
```

### Docker Compose

```bash
version: "3"
services:
  jmusicbot:
    image: twosevenska/jmusicbot:0.3.9
    container_name: jmusicbot
    volumes:
      - /path/to/config.txt:/bot/config.txt
    restart: unless-stopped
```
