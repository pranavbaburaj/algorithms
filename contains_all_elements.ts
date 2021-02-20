

function minWindow(s: string, t: string): string {
    let index:number = 1
    let containsAllArray:Array<string> = new Array()
    while (index < s.length){
        let currentString:string = ""
        for(let j:number = 0; j < index; j++){
            currentString += s[j]
        }

        let containsAllElements:boolean = false
        for(let i:number = 0; i < t.length; i++){
            if(currentString.includes(t[i])){
                containsAllElements = true
            } else {
                containsAllElements = false
            }
        }
        if(containsAllElements){
            containsAllArray.push(currentString)
        }

        index++
    }

    
    return ""
};

console.log(minWindow(
  "ADOBECODEBANC",
  "ABC"
))
