import std.stdio;
import std.conv;

class Dividing {
    private int[] data;
    
    this(int[] data){
        this.data = data;
    }
    
    public int[] condition_is_true(){
        int[] f_array = [];
        for (int x = 0; x < this.data.length; x++){
            if (this.isDividing(this.data[x])){
                f_array ~= this.data[x];
            }
        }
        return f_array;
    }
    
    private bool isDividing(int n) {
        string data = to!string(n);
        foreach(char character; data){
            int current = to!int(character);
            if(n % current != 0){
                return false;
            }
        }
        return true;
    }
}

int[] self_dividing(int n, int j){
    int[] find_array = [];
    for(int index=n; index<(j+1); index++){
        find_array ~= index;
    }
    
    Dividing div = new Dividing(find_array);
    return div.condition_is_true();
}

void main(string[ ] args)
{
   writeln(self_dividing(1, 22));
}
