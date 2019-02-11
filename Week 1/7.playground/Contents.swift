class Solution {
    func reverseString(_ s: inout [Character]) {
        s.reverse()
        var ss = ""
        for i in s {
            ss.append(i)
        }
        // print (ss)
        ss.lowercased()
        s = Array(ss)
        
    }
}
