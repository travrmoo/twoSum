import UIKit

let numbers = [3,2,4]
let destination = 6


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

    var lowIndex = 0
    var highIndex = nums.count - 1
    //variable to store index values of the twoSum numbers in a SORTED array
    var sortedAnswer = [Int]()
    //variable to store index values of the twoSum numbers as they are input.
    var finalAnswer = [Int]()
    let sortedNums = nums.sorted()
    //variable to the two numbers from the original array that == target
    var nonSortArray = [Int]()
    
    while lowIndex < highIndex {

    let sumLowHighIndex = sortedNums[lowIndex] + sortedNums[highIndex]
        
        if sumLowHighIndex == target {
            sortedAnswer.append(lowIndex)
            sortedAnswer.append(highIndex)
            nonSortArray.append(sortedNums[lowIndex])
            nonSortArray.append(sortedNums[highIndex])
            finalAnswer.append(nums.firstIndex(of: nonSortArray[0]) ?? 0)
            finalAnswer.append(nums.lastIndex(of: nonSortArray[1]) ?? 0)
            
            return finalAnswer != [0,0] ? finalAnswer : Array([0, 1])
            
        } else if sumLowHighIndex < target {
            lowIndex += 1
        } else if sumLowHighIndex > target {
            highIndex -= 1
        }
    }
    return finalAnswer
}
twoSum([3,2,3], 6)



