#!/bin/bash

reference="AGCATCGATCGATCGATCGATCGATTGTCGATCGATCGATGT"
pattern="AGT"

naive () {
	ref=$1
	patt=$2
	thresh=$3
	
	for (( i=0; i<$((${#ref}-${#patt}+1)); i+=1 )); do 
		mismatch=0
		match=1
		for (( j=0; j<$((${#patt})); j+=1 )); do
			if [ "${ref:i+j:1}" != "${patt:j:1}" ]; then
				((mismatch=mismatch+1))
				if [ $mismatch -gt $thresh ]; then
					match=0
					break
				fi
			fi
		done
		if [ $match -eq 1 ]; then
			echo $i
		fi
	done
}

echo $(naive $reference $pattern 1) | tr ' ' ,
