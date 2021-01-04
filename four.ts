function solve(n:any):number{
    var d:number = 0
    n = n.toString()
    for (var x = 0; x < n.length; x++){
        if (n[x]=="4"){
            d += 1
        }
    }
    return d
}

// console.log(solve(3445))
