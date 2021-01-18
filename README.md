# C-QUARK-Docker
Docker image for the C-QUARK ab initio protein structure prediction software from the U. Mich Zhang Lab.


## Build Locally
```
docker build -t cquark .
```

## Run Locally
```
docker run --name cquark -d cquark
docker exec -it cquark /bin/bash
```
