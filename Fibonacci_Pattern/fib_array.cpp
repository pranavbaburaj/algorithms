#include <iostream>
#include <vector>

std::vector<int> fibonacci_array(int n){
	std::vector<int> vector_data;
	int point = 0;
	while(point < (n+1)){
		if(point == 0 || point == 1){
			vector_data.push_back(point);
			continue;
		} 

		vector_data.push_back(
			vector_data.at(n-1) + vector_data.at(n-2)
		);
		point += 1;
	}
	return vector_data;
}

int main() {
  std::vector<int> pattern = fibonacci_array(5);
	for(int index=0; index<pattern.size(); index++){
		std::cout << pattern.at(index) << std::endl;
	}
}
