import std.stdio;
import std.math;


auto median(int[] array) {
    if(array.length % 2 == 0){
        auto sum = array[array.length / 2] + array[(array.length / 2) - 1];
        return sum / 2;
    } else {
        return array[cast(int) floor(cast(float) array.length / 2)];
    }
}

void main(string[ ] args){
    writeln(median([1, 3, 4, 7]));
}
