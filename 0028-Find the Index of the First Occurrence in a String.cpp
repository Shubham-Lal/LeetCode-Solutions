class Solution {
public:
    int strStr(string haystack, string needle) {
        int i=0;
        int j=0;
        int answer=-1;
        while(i<haystack.size()){
            if(haystack[i]==needle[j]){
                i++;
                j++;
                if(j==needle.size()){
                    answer=i-needle.size();
                    break;
                }
            }
            else{
                i=i-j+1;
                j=0;
            }
        }
        return answer;
    }
};