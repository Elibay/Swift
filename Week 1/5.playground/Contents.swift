
class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var b = 0
        var nums2 = nums
        nums2.sort()
        var ans = 0
        for i in nums2 {
            if b == 0 {
                ans += i
            }
            b = 1 - b
        }
        return ans
    }
}
