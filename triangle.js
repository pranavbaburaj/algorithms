/**
 * @param {number[][]} triangle
 * @return {number}
 */
var minimumTotal = function(triangle) {
    var sum = 0;
    for (var x = 0; x < triangle.length; x++){
        sum += Math.min(...triangle[x]);
    }
    return sum
};
