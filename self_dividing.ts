class selfDividing {
    private data:Array<number>

    constructor(d:Array<number>){
        this.data = d
    }
    public isConditionTrue():Array<number> {
        var f:Array<number> = []
        for (var x = 0; x < this.data.length; x++){
            if (this.isDividing(this.data[x])){
                f.push(this.data[x])
            }
        }
        return f;
    }
    private isDividing(f:number):boolean{
        var j = f.toString()
        for (var x = 0; x < j.length; x++){
            if (f % parseInt(j[x]) != 0){
                return false
            }
        }
        return true
    }
}

function selfDividingNumbers(left: number, right: number): number[] {
    var arr:Array<number> = new Array()
    for (var x = left; x < right + 1; x++){
        arr.push(x)
    }
    var v  = new selfDividing(arr);

    return v.isConditionTrue();
};

console.log(selfDividingNumbers(1, 22))
