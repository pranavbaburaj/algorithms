# Median of two sorted arrays

## Question
Given two sorted arrays  `nums1`  and  `nums2`  of size  `m`  and  `n`  respectively, return  **the median**  of the two sorted arrays.

**Follow up:**  The overall run time complexity should be  `O(log (m+n))`.

## Example
**Example 1:**

**Input:** nums1 = [1,3], nums2 = [2]
**Output:** 2.00000
**Explanation:** merged array = [1,2,3] and median is 2.

**Example 2:**

**Input:** nums1 = [1,2], nums2 = [3,4]
**Output:** 2.50000
**Explanation:** merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.


## Solution

#### Steps

 1. Join the two arrays
```ts
array  =  data.array1  +  data.array2;
```
 3. Know if it is even or odd
```ts
array.length % 2  ==  0
```
 5. Find the solution
 - If an array is even:
				 **Ex**: *[1, 2, 3, 4]*
				 ***(arr[len(arr) / 2] + arr([len(arr)  / 2)- 1] ) / 2***
				 ***(arr[2] + arr[1]) / 2***
				 ***3 + 2 / 2***
				 *2.5*
- if an array is odd:
			**Ex** : *[1, 2 ,3]*
			**arr[Math.floor(len(arr) / 2)]**
```ts
if (array.length % 2 == 0){

sum = array[array.length / 2] + array[(array.length / 2) - 1];

return sum / 2;

} else {

return array[Math.floor(array.length / 2)]

}
```
