//Swift中字典为HashMap结构，故键值查找时复杂度O(1)。通过临时变量temp减少一层循环，整体复杂度为O(n)

import UIKit

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var temp = [Int:Int]()
        for (index,value) in nums.enumerated() {
            guard let result = temp[target - value] else {
                temp[value] = index
                continue
            }
            return[result,index]
        }
        return []
    }
}


Solution.init().twoSum([2,3,4], 6)
