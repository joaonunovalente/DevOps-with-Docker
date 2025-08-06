# yt-dlp

## Commands

``` bash
docker build . -t yt-dlp

docker run -it -v "$(pwd)/material.md:/mydir/material.md" --entrypoint /bin/bash yt-dlp
```