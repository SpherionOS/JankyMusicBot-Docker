# The Jankiest Way To Dockerize JMusicBot
# By the jankiest technician to ever live
### Configuration
All configuration needed for the bot is provided in the example `config.txt` file which can be copied/downloaded and edited. Once edited by placing bot token and owner ID, it should be stored wherever you put it as `/path/to/config.txt`. The reason why the docker volume is linked to `config.txt` is because linking a directory removes the files in `/bot` needed for the bot to run, so the workaround is passing through specific .txt file.

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
