#!/bin/bash
for i in 3 # 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
text="Total energy of the DFT / Hartree-Fock s.c.f. calculation"
do
 cd  tight/nvdw/Au$i/
 (echo "4"&& grep $text  Au4/au20.out | sed -e 's/ | /#/; s/eV\n/eV/' && awk ' {getline;getline;getline;for(i=7; i<=11; i++) {getline; print $5, $2, $3,$4}}' Au4/geometry.in.next_step)
 #awk '{print $2 " " $5 }' pools_nvdW/Au$i/data_last_step.txt | grep "0.0, " | sed  -e 's/0.0, //' | xargs -I {}  cp {}/geometry.in.next_step tight/nvdw/Au$i/geometry.in
done
