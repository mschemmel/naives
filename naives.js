var reference = "AGCATCGATCGATCGATCGATCGATTGTCGATCGATCGATGT"
var pattern = "AGT"

function naive(ref, patt, thresh) {
	var occ = []
	for (var i = 0; i < (ref.length-patt.length+1); i++) {
		var mismatch = 0
		var match = true
		for (var j = 0; j < patt.length; j++) {
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
