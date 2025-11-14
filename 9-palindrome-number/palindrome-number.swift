class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let Xstring = "\(x)"
        let reverse = String(Xstring.reversed())

        if (Xstring == reverse){
            return true
        }
        else {
            return false
        }
    }
}