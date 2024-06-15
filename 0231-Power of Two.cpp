class Solution {
public:
    bool isPowerOfTwo(int n) {
        if(n == 1) return true;
        if(n <= 0) return false;
        else {
            long double logRes = log2(n);
            long int logIntRes = static_cast<int>(logRes);
            if(logRes == logIntRes) return true;
            else return false;
        }
    }
};