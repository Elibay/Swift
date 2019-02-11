class Solution {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        var ans = [[Int]]()
        for i in A {
            var a = [Int]()
            var b = i
            b.reverse()
            for j in b {
                a.append(1 - j)
            }
            ans.append(a)
        }
        return ans
    }
}
