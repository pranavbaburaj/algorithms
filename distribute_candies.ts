const dup = (p) => {
    var arr = new Array();
    for (var i = 0; i < p.length; i++){
        if (!arr.includes(p[i])){
            arr.push(p[i])
        }
    }
    return arr
}

function distributeCandies(candyType: number[]): number {
    var l = candyType.length / 2
    var dl = dup(candyType).length
    
    if (l < dl){
        return l;
    }else{
        return dl;
    }
};
