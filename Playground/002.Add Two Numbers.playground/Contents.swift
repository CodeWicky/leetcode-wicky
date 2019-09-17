//: Playground - noun: a place where people can play

import UIKit

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
       self.val = val
       self.next = nil
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil && l2 == nil {
            return nil
        }
        if l1 == nil {
            return l2
        }
        if l2 == nil {
            return l1
        }
        var temp1 = l1
        var temp2 = l2
        var result : ListNode?
        var temp : ListNode?
        var delta = 0
        repeat {
            let val1 = temp1?.val != nil ?temp1!.val: 0
            let val2 = temp2?.val != nil ?temp2!.val: 0
            var sum = val1 + val2 + delta
            if sum >= 10 {
                delta = 1
                sum -= 10
            } else {
                delta = 0
            }
            if temp == nil {
                temp = ListNode.init(sum)
                result = temp
            } else {
                temp!.next = ListNode.init(sum)
                temp = temp!.next;
            }
            temp1 = temp1?.next
            temp2 = temp2?.next
        } while temp1 != nil || temp2 != nil
        if delta > 0 {
            temp?.next = ListNode.init(delta)
        }
        return result
    }
}

func makeNodes(source : [Int]?) ->ListNode? {
    guard let arr = source else {
        return nil
    }
    var temp : ListNode?
    var result : ListNode?
    
    for i in 0..<arr.count {
        let node = ListNode.init(arr[i])
        if temp != nil {
            temp?.next = node
            temp = node
        } else {
            temp = node
            result = node
        }
    }
    return result
}

///两个副主函数用于测试
func printNode(node : ListNode?) {
    var cur = node
    var str = ""
    while cur != nil {
        if str.isEmpty {
            str = "\(cur!.val)"
        } else {
            str += "->\(cur!.val)"
        }
        cur = cur?.next
    }
    print(str)
}

let input1 = [2,4,7]
let node1 = makeNodes(source: input1)
let input2 = [5,6,4]
let node2 = makeNodes(source: input2)
let res = Solution.init().addTwoNumbers(node1, node2)
printNode(node: res)



