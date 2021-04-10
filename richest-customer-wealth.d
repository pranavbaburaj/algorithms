import std.stdio;

int maximum(int[] array){
    int max = 0;
    for(int idx=0; idx<array.length; idx++){
        if(max < array[idx]){
            max = cast(int) array[idx];
        }
    }
    return max;
}

int wealth(int[][] data){
    int[] sum_array = [];
    for(int index=0; index<data.length; index++){
        int[] current = data[index];
        int sum = 0;
        for(int idx=0; idx<current.length; idx++){
            sum += cast(int) current[idx];
        }
        sum_array ~= sum;
    }

    return maximum(sum_array);
}

void main(string[ ] args){
    writeln(wealth([[3, 4, 3], [4, 3, 2]]));
}
