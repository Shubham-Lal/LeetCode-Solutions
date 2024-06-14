class Solution {
public:
    vector<string> summaryRanges(vector<int>& nums) {
        vector<string> ans;
        int continuous = -1;
        nums.push_back(INT_MIN);
        for (int i = 0; i < nums.size() - 1; i++) {
            if ((long) nums[i + 1] - nums[i] == 1 && continuous == -1) continuous = i;
			else if ((long) nums[i + 1] - nums[i] == 1 && continuous != -1) continue;
			else {
                if (continuous == -1) ans.push_back(to_string(nums[i]));
				else {
                    ans.push_back(to_string(nums[continuous]) + "->" + to_string(nums[i]));
                    continuous = -1;
                }
            }
        }
        return ans;
    }
};