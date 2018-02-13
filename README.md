## Eobot Miner whit Ubuntu CPU
##### Default is my user "1777741"
-----

#### Run
```
docker run -ti --rm --name Eobot \
-e USER="1777741" \
-e CORES=4 \
izone/eobot
```

#### Run
```
nvidia-docker run -ti --rm --name BTG \
-e USER="1uvr3z@gmail.com" \
-e POOL="btg.pool.minergate.com" \
-e PORT=3257 \
izone/btg-cuda
```

#### Build
```
docker build -t izone/eobot .
```
