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

## How to Run
   
The following arguments must be set (mandatory arguments):
- `-libdir`  means the path of the template libraries
- `-seqname` means the unique name of your query sequence
- `-datadir` means the directory which contains your sequence 

Run the example: 
```
$pkgdir/QUARKmod/runQUARK.pl -libdir /home/yourname/ITLIB -seqname example -datadir /home/yourname/C-QUARK-1.0/example
```
Other arguments:

- `-pkgdir`: means the path of the C-QUARK package. default is to guess by the location of runQUARK.pl script
- `-java_home`: means the path contains the java executable "bin/java" (your system needs to have Java installed)
- `-homoflag`: [real, benchmark],"real" will use all templates, "benchmark" will exclude homologous templates    
- `-idcut`: sequence identity cutoff for "benchmark" runs, default value is 0.3, range is in [0,1]    
- `-ntemp`: number of top templates output for each threading program, default is 20, range is in [1,50]    
- `-nmodel`: number of final models output by C-QUARK, default value is 5, range is in [1,10]
- `-traj`: this option means to deposit the trajectory files
- `-light`: this option means to run C-QUARK in fast mode (each simulation runs by default 5 hours maximum)
- `-hours`: specify maximum hours of simulations (default=5 when -light=true)
- `-outdir`: where the final results should be saved (default value is set to data_dir)
- `-python2`: path to python 2, for example /bin/python 
- `-python3`: path to python 3 for contact prediction, need to support pytorch 0.3.0, for example /bin/python3
- `-pipe`: use which pipeline to fold the protein
  - `QE`: #original QUARK ab initio simulation
  - `QN`: #quark_ab_initio+init (templates from LOMETS2)
  - `QP`: #quark_ab_initio+init+dist_prof (dist_prof derived from LOMETS2)
  - `QT`: #quark_ab_initio+init+I-TASSER_restrains (whole-set of I-TASSER restratins)
  - `QEC`: #QE+contact (C-QUARK, best for ab initio targets)   =default
  - `QNC`: #QN+contact (second best for ab initio or hard TMB target, very fast)
  - `QPC`: #QP+contact C-quark_ab_initio+init+dist_prof (dist_prof derived from LOMETS2)
  - `QTC`: #QT+contact C-quark_ab_initio+init+I-TASSER_restrains (whole-set of I-TASSER restratins)


-----------------------

## Citations
1. S. M. Mortuza, Wei Zheng, Chengxin Zhang, Yang Li, Yang Zhang. C-QUARK: Template-free protein structure modeling using low-accuracy contact-map prediction. Submitted, 2020.

2. Wei Zheng, Yang Li, Chengxin Zhang, Robin Pearce, S. M. Mortuza, Yang Zhang. Deep-learning contact-map guided protein structure prediction in CASP13. Proteins: Structure, Function, and Bioinformatics, 87: 1149-1164 (2019).

3. D. Xu and Y. Zhang. (2012) Ab initio protein structure assembly using continuous structure fragments and optimized knowledge-based force field. Proteins, 2012, 80, 1715-1735. 

4. D. Xu and Y. Zhang. (2013) Toward optimal fragment generations for ab initio protein structure assembly. Proteins, 81: 229-239 . 


## About C-QUARK
C-QUARK was developed by the Zhang Lab at the University of Michigan. To learn more about C-QUARK, visit[https://zhanglab.ccmb.med.umich.edu/C-QUARK/](https://zhanglab.ccmb.med.umich.edu/C-QUARK/).
