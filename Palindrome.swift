
//  
  import UIKit
  
//PALINDROME 
//Take user input, reverse it, add it to itself
//If the sum is not a palindrome then repeat the prodecure until you get a palindrome
  
  
  func isPalindrome(num: Int) -> Int {
      //Convert integer to String
      var str = String(num)
      //Reverse said String
      str = String(str.reversed())
      //Make said string an Integer Again
      var reversedInt = Int(str)
      //Variable for Sum
      var sum = 0
      
      //Unwraping by Force
      if reversedInt != nil {
          let x = reversedInt!
          //Adding reversed number and original number
          sum = num + x
          //CHECK IF SUM IS PALINDROME
          str = String(sum)
          print("Original Sum: \(str)")
          let str2 = String(str.reversed())
          print("Reversed Sum: \(str2)")
          
          if(str == str2){
              return sum
          } else {
              return isPalindrome(num: sum)
          }
      }
      return 0
  }
  
  var check = 7325
  var reverse = isPalindrome(num: check)
  print(reverse)
