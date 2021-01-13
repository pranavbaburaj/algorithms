function sortArrayByParity(A: number[]): number[] {
    var even:Array<number> = new Array();
    var odd:Array<number> = new Array();
    
    for (var x = 0; x < A.length; x++){
        if (A[x] % 2 == 0) {
            even.push(A[x])
        } else {
            odd.push(A[x])
        }
    }
    
    return even.concat(odd)
};
