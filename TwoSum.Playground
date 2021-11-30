
import UIKit
import Foundation

//Luis Garcia-Velasquez
//@Nov 29, 2021.   


//TWO SUM

func twoSum(_ nums: [Int],_ target: Int) -> [Int] {
    
    for index in 0..<(nums.count - 1) {
        let compare = nums[index]
        for next in  (index + 1)..<nums.count{
            var sum = nums[index] + nums[next]
            if sum == target {
                
                print("The numbers are: \(nums[index]) + \(nums[next]) = \(target)")
                return [index, next]
            }
            
        }
    }
    return [0,0]
}

let numeros = [1, 4, 5, 7, 2, 10, 3]
let tar = 10
let result = twoSum(numeros, tar)
