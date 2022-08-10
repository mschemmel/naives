var reference:string = "AGCATCGATCGATCGATCGATCGATTGTCGATCGATCGATGT"
var pattern:string  = "AGT"

function naive(ref, patt, thresh) {
	var occ:number[] = []
	for (var i:number = 0; i < (ref.length-patt.length+1); i++) {
		var mismatch:number = 0
		var match:boolean = true
		for (var j:number = 0; j < patt.length; j++) {
			if (ref[i+j] != patt[j]) {
				mismatch++
				if (mismatch > thresh) {
					match = false
					break
				}
			}
		}
		if (match) {
			occ.push(i)
		}
	}
	return occ
}

console.log(naive(reference, pattern, 1).join(","))
