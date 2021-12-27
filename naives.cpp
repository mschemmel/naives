#include<iostream>
#include<vector>

std::string reference = "AGCATCGATCGATCGATCGATCGATTGTCGATCGATCGATGT";
std::string pattern = "AGT";

std::string join(std::vector<int> &occ){
	std::string s;
	int i = 0, c = 0;
	const std::string delimeter = ",";
	while(i != occ.size() - 1){
		s += std::to_string(occ[i]) + delimeter;
		i += 1;
	}
	s += std::to_string(occ[i]);
	return s;
}

std::vector<int> naives(std::string &ref, std::string &patt, const int threshold){
	std::vector<int> occ;
	for(int i = 0; i < (ref.length() - patt.length() + 1); i++){
		bool match = true;
		int mismatch = 0;
		for(int j = 0; j < patt.length(); j++){
			if(ref[i+j] != patt[j]){
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
	std::cout << join(occurences) << std::endl;
	return 0;
}
