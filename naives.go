package main

import (
	"fmt"
	"strings"
)

var reference = "AGCATCGATCGATCGATCGATCGATTGTCGATCGATCGATGT"
var pattern = "AGT"

func naive(ref string, patt string, thresh int) {
	occ := []int{}
	for i := 0; i < (len(ref) - len(patt) + 1); i++ {
		var mismatch = 0
		var match = true
		for j := 0; j < len(patt); j++ {
			if ref[i+j] != patt[j] {
				mismatch = mismatch + 1
				if mismatch > thresh {
					match = false
					break
				}
			}
		}
		if match {
			occ = append(occ,i)
		}
	}
	fmt.Println(strings.Trim(strings.Replace(fmt.Sprint(occ), " ", ",", -1), "[]"))
}

func main() {
	naive(reference,pattern,1)
}
