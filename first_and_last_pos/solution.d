import std.stdio;


class Problem {
    private int[] data;
    private int target;
    private int[] positions = [];
    
    this(int[] data, int target) {
        this.data = data;
        this.target = target;
    }
    
    public int[] find() {
        for(int idx=0; idx<this.data.length; idx++){
            if(this.data[idx] == this.target){
                this.positions ~= idx;
            }
        }
        
        if(this.positions.length >= 2){
            return [this.positions[0], this.positions[this.positions.length - 1]];
        }
        
        if(this.positions.length == 0){
            return [-1, -1];
        }
        
        return [this.positions[0], -1];
    } ;
}

void main(string[ ] args)
{
   Problem problem = new Problem([1, 2, 3, 6], 63);
   writeln(problem.find());
}
