

class Solution {
    public int lengthOfLongestSubstring(String s) {
        int[] lastSeen = new int[256];
        Arrays.fill(lastSeen, -1);

        int maxLen = 0; 
        int i;
        int j = 0;
        for (i = 0; i< s.length(); i++){
            char c = s.charAt(i);

            if(lastSeen[c]>= j){
                j = lastSeen[c] + 1;
            }
            lastSeen[c] = i;
            maxLen = Math.max(maxLen, i-j+1);
        }
        return maxLen;
    }
}