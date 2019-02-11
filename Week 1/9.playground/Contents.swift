class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var b = s
        b.reverse()
        if s == b {
            return true
        }
        return false
    }
}
