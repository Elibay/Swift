class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var a = [Int]()
        var cnt0 = 0
        for i in nums {
            if i == 0 {
                cnt0 += 1
            } else {
                a.append(i)
            }
        }
        if cnt0 != 0 {
            for i in 1...cnt0 {
                a.append(0)
            }
        }
        nums = a
    }
}
