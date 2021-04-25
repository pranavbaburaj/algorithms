#include <iostream>
#include <string>
#include <vector>

std::string form_string(std::vector<int>& data){
    std::string output_string = "";
    for(int index=0; index<data.size(); index++){
        output_string += to_string(data.at(index));
        output_string += ",";
    }

    return output_string;
}

std::vector<int> fibonacci(int sequence_limit, int more_count){
    int limit = sequence_limit + more_count;
    int index = 0;
    std::vector<int> sequence;
    while(index < (limit + 1)){
        if(index == 0 || index == 1){
            sequence.push_back(index);
        } else {
            sequence.push_back(
                sequence.at(index-1) + sequence.at(index-2)
            )
        }
        index += 1;
    }
    return std::vector<int>(sequence.end()-more_count, sequence.end());
}

int main(int argc, char **argv) {
    int value1 = std::atoi(argv[1]);
    int value2 = std::atoi(argv[2]);

    std::cout << form_string(fibonacci(value1, value2));
}
