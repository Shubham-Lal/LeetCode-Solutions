class Solution {
public:
    int romanToInt(string s) {
        int sum = 0;
        map<char, int> roman_pair{{'I', 1}, {'V', 5}, {'X', 10}, {'L', 50}, {'C', 100}, {'D', 500}, {'M', 1000}};

        for (int i = 0; i < s.length(); i++)
        {
            if (roman_pair[s[i]] < roman_pair[s[i + 1]]) sum -= roman_pair[s[i]];
            else sum += roman_pair[s[i]];
        }
            
        return sum;
    }
};