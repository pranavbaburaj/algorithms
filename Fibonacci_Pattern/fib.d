import std.stdio;

class Fibonacci {
    public int input;
    
    this(int input) {
        this.input = input;
    }
    
    public static int number(int inp) {
        if(inp == 0 || inp == 1){
            return inp;
        } else if(inp == 2){
            return (inp-1);
        }
        
        return Fibonacci.number(inp-1) + Fibonacci.number(inp-2);
    } 
    
    public static array(int n){
        int[] range = [];
        int index = 0;
        while(index < (n + 1)){
            if(index == 0 || index==1){
                range ~= index;
            } else {
                range ~= range[index-1] + range[index-2];
            }
            index += 1;
        }
        return range;
    }
}


void main(string[ ] args){
    Fibonacci fib = new Fibonacci(5);
    writeln(Fibonacci.number(fib.input));
    writeln(Fibonacci.array(fib.input));
}
