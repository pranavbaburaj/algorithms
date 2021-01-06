// check for vowels
function checkForVowels(s:string):boolean {
    var v = new Array('a', 'e', 'i', 'o', 'u')
    for (var x = 0; x < v.length; x++){
        if (s.startsWith(v[x]) || s.startsWith(v[x].toUpperCase())){
            return true
        }else {
        }
    }
    return false
}

function addA(n:number):string{
    var a = ''
    for (var j = 0; j < n + 1; j++){
        a += 'a'
    }
    return a
}

function get_string(x:Array<string>):string {
    var s = ''
    for (var b = 0; b < x.length; b++){
        s += `${x[b]} `
    }
    return s
}

function toGoatLatin(S: string): string {
    var origin = S.split(" ")
    for (var i = 0; i < origin.length; i++){
        if (checkForVowels(origin[i])){
            origin[i] += "ma"
        } else {
            var f = origin[i][0]
            origin[i] = origin[i].substr(1)
            origin[i] += f.toString()
            origin[i] += "ma"
        }
        origin[i] += addA(i)
    }
    return get_string(origin)
};
