import std.string;
import std.stdio;
import std.array;

class LongestWord {
    private string[] data;
    private string target;
    
    this(string data){
        this.data = data.split(",");
    }
    
    public string find(){
        int[] lengths = [];
        for(int idx=0; idx<this.data.length; idx++){
            string current = this.data[idx];
            lengths ~= cast(int) current.length;
        }
    
        return this.data[this.largest(lengths)];
    }
    
    private int largest(int[] data){
        if(data.length == 0){
            return -1;
        }
        int largestNumber = 0;
        for(int index=0; index<data.length; index++){
            if(data[index] > data[largestNumber]){
                largestNumber = index;
            }
        }
        return largestNumber;
    }
}

void main(string[ ] args)
{
    LongestWord problem = new LongestWord(
    "run,barn,yellow,ba,sha,fish,swim"
    );
   writeln(problem.find());
}
