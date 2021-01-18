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


## Citations
1. S. M. Mortuza, Wei Zheng, Chengxin Zhang, Yang Li, Yang Zhang. C-QUARK: Template-free protein structure modeling using low-accuracy contact-map prediction. Submitted, 2020.

2. Wei Zheng, Yang Li, Chengxin Zhang, Robin Pearce, S. M. Mortuza, Yang Zhang. Deep-learning contact-map guided protein structure prediction in CASP13. Proteins: Structure, Function, and Bioinformatics, 87: 1149-1164 (2019).

3. D. Xu and Y. Zhang. (2012) Ab initio protein structure assembly using continuous structure fragments and optimized knowledge-based force field. Proteins, 2012, 80, 1715-1735. 

4. D. Xu and Y. Zhang. (2013) Toward optimal fragment generations for ab initio protein structure assembly. Proteins, 81: 229-239 . 
