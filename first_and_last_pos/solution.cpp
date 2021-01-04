class Solution {
public:
    vector<int> count(vector<int>& d, int target){
        vector<int> position;
        for (int x = 0; x < d.size(); x++){
            if (d[x] == target){
                position.push_back(x);
            }
        }
        vector<int> pos;
        if (position.size() != 0){
            pos.push_back(position[0]);
            pos.push_back(position.back());
        }
        if (pos.size() == 0){
            vector<int> no;
            for (int i = 0; i < 2; i++){
                no.push_back(-1);
            }
            return no;
        }else if(pos.size() == 1)
        {
            pos.push_back(pos.back());
            return pos;
        }
        else{
            return pos;
        }
    }
    
    vector<int> searchRange(vector<int>& nums, int target) {
        return count(nums, target);
    }
};
