import std.stdio;

int[] factors(int n) {
    int[] data = [];
    for(int x = 0; x < n; x++){
        if(n % x == 0){
            data ~= x;
        }
    }
    return data;
}

bool perfect(int n){
    int[] f = factors(n);
    int s = 0;
    for(int j = 0; j < f.length; j++){
        s += f[j];
    }
    return s == n;
}

void main(string[ ] args) {
    writeln(perfect(5));
}
