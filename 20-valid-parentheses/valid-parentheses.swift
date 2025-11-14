class Solution {
    func isValid(_ s: String) -> Bool {
        var Stack: [Character] = []
        let pairs: [Character : Character] = [
            ")" : "(",
            "]" : "[",
            "}" : "{"
        ]
        for ch in s {
            if ch == "{" || ch == "[" || ch == "(" {
                Stack.append(ch)
            }
            else if let ExpectedOpen = pairs[ch]{
                if Stack.last != ExpectedOpen{
                    return false
                }
                Stack.removeLast()
            }
            else {
                return false
            }
        }
        return Stack.isEmpty
    }
}