## Eobot Miner whit Ubuntu CPU
##### Default is my user "1777741"
-----

### Run

#### Eobot (x11)
```
docker run -ti --rm --name Eobot \
-e ALGORITHM="x11" \
-e POOL="x11.eobot.com" \
-e PORT="5555" \
-e USERPASS="eobot.1777741:x" \
izone/eobot
```

#### Build
```
docker build -t izone/minerd .
docker build -t izone/minerd:build -f Dockerfile_build .
```
