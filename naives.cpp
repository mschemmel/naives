#include<iostream>
#include<vector>

std::string reference = "AGCATCGATCGATCGATCGATCGATTGTCGATCGATCGATGT";
std::string pattern = "AGT";

std::vector<int> naives(std::string ref, std::string pattern, int threshold){
	std::vector<int> occ;
	for(int i = 0; i < (ref.length() - pattern.length() + 1); i++){
		int mismatch = 0;
		bool match = true;
		for(int j = 0; j < pattern.length(); j++){
			if(ref[i+j] != pattern[j]){
				mismatch += 1;
				if(mismatch > threshold){
					match = false;
					break;
				}
			} 
		}
		if(match){
			occ.push_back(i);
		} 
	}	
	return occ;	
}

int main(){
	std::vector<int> occurences = naives(reference, pattern, 1);
	for(const int& i: occurences){
		std::cout << i << "\n";
	}
	return 0;
}
