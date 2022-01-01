#include<stdio.h>

const char reference[] = "AGCATCGATCGATCGATCGATCGATTGTCGATCGATCGATGT";
const char pattern[] = "AGT";

size_t len(const char *txt) {
	return ((*txt) ? len(++txt) + 1 : 0);
}

void naive(const char *ref, const char *patt, const size_t thresh) {
	size_t max_occ = len(reference)-len(pattern);
	for(size_t i = 0; i < (len(ref) - len(patt) + 1); i++){
		size_t mismatch = 0;
		size_t match = 1;
		for(size_t j = 0; j < len(patt); j++){
			if(ref[i+j] != patt[j]){
				mismatch++;
				if(mismatch > thresh) {
					match = 0;
					break;
				}
			}
		}
		if (match){
			printf(i < max_occ ? "%zu," : "%zu\n",i);
		}
	}
}

int main(void){
	naive(reference, pattern, 1);
}
