class Solution {
public:
    int singleNumber(vector<int>& nums) {
        for (int x = 0; x < nums.size(); x++){
            if (count(nums.begin(), nums.end(), nums[x]) == 1){
                return nums[x];
            }
        }
        return 0;
    }
};
