class Solution {
    func sortedSquares(_ A: [Int]) -> [Int] {
        var b = [Int]()
        for i in A {
            b.append(i * i)
        }
        b.sort()
        return b;
    }
}
