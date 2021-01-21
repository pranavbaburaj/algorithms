/**
 * @param {number[]} nums
 * @return {number}
 */
function remove_duplicates(nums) {
    var arr = []
    
    for (var x = 0; x < nums.length; x++){
        if (arr.includes(nums[x])){
            
        } else {
            arr.push(nums[x])
        }
    }
    return arr
}

var thirdMax = function(nums) {
    nums = remove_duplicates(nums)
    if(nums.length > 2){
        return nums.sort(function(a, b) {
            return a - b
        })[nums.length - 3]
    } else {
        return nums.sort(function(a, b) {
            return a - b
        })[nums.length - 1]
    }
};
