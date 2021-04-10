import std.stdio;

class Problem {
    private int[] candy;
    private int l_point;
    private int[] single_array;
    
    this(int[] candyType) {
        this.candy = candyType;
        this.l_point = cast(int) this.candy.length / 2;
        this.single_array = this.remove_duplicate();
        
    }
    
    private int[] remove_duplicate() {
        int[] array = [];
        for(int idx=0; idx<this.candy.length; idx++){
            if(!this.includes(array, this.candy[idx])){
                array ~= this.candy[idx];
            }
        }
        return array;
    }
    
    private bool includes(int[] array, int target){
        for(int index=0; index<array.length; index++){
            if(array[index] == target){
                return true;
            }
        }
        return false;
    }
    
    public int find() {
        if(this.single_array.length > this.l_point){
            return this.l_point;
        }
        
        return cast(int) this.single_array.length;
    }
}


void main(string[ ] args){
    Problem  problem = new Problem([1,1,2,2,3,3]);
    writeln(problem.find());
}
