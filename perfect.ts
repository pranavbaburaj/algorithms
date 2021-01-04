function getFactors(n:number):Array<number>{
    var d:Array<number> = []
    for (var x = 0; x < n; x++){
        if (n % x == 0){
            d.push(x)
        }
    }
    return d
}

function checkPerfectNumber(num: number): boolean {
    var f:any = getFactors(num)
    var s:number = 0
    for (var j = 0; j < f.length; j++){
        s += f[j]
    }
    return s == num
};
