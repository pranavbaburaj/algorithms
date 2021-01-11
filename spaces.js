/**
 * @param {string} text
 * @return {string}
 */
function remove(text) {
    var data = []
    for (var x = 0; x < text.length; x++){
        if (text[x] != ""){
            data.push(text[x])
        }
    }
    
    return data
}

function find_div(text) {
    var arr = []
    for (var x = 0; x < text; x++){
        if (text % x == 0) {
            arr.push(x)
        }
    }
    
    return Math.max(...arr)
}

var reorderSpaces = function(text) {
    var space_count = 0
    
    for (var x = 0; x < text.length; x++){
        if (text[x] == " "){
            space_count += 1
        }
    }
    
    var data = remove(text.split(" "))
    space_count = find_div(space_count)
    
    var s = ""
    
    for (var i = 0; i < data.length; i++){
        s += data[i]
        
        for (var j = 0; j < space_count; j++){
            s += " "
        }
    }
    
    return s
};
