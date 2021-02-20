"use strict";
function minWindow(s, t) {
    let index = 1;
    let containsAllArray = new Array();
    while (index < s.length) {
        let currentString = "";
        for (let j = 0; j < index; j++) {
            currentString += s[j];
        }
        let containsAllElements = false;
        for (let i = 0; i < t.length; i++) {
            if (currentString.includes(t[i])) {
                containsAllElements = true;
            }
            else {
                containsAllElements = false;
            }
        }
        if (containsAllElements) {
            containsAllArray.push(currentString);
        }
        index++;
    }
    return "";
}
;
console.log(minWindow("ADOBECODEBANC", "ABC"));

Customize
