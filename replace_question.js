/**
 * @param {string} s
 * @return {string}
 */

var adjacent = function(s, x) {
    var arr = []
    if (x != 0){
        arr.push(s[x - 1])
    }
    
    if (x != s.length - 1) {
        arr.push(s[x + 1])
    }
    
    return arr
}


var modifyString = function(s) {
    var alpha = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var a = ""
    for (var x = 0; x < s.length; x++){
        if(s[x] == "?"){
            var arr = adjacent(s, x)
            for (var x = 0; x < alpha.length; x++){
                if (!arr.includes(alpha[x])){
                    a += alpha[x]
                    break
                }
            }
        } else {
            a += s[x]
        }
        
    }
    
    return a
};

