import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */
var invested: Double = 500_000
var deposit: Double = invested // EUR
let period = 5 //years
let rate = 0.02 // interest rate 2 %
var profit: Double = 0


for _ in 1...period{
    deposit += (deposit * rate)
}
profit = deposit - invested
// Round Double precision
var profitRounded: String = String(format: "%.2f", profit)
var depositRounded: String = String(format: "%.2f", deposit)

print("Amount of income after \(period) years will be \(profitRounded) EUR. My total deposit will be \(depositRounded) EUR!")



/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

// Returns all even numbers in Intager array
let myIntArray: [Int] = [1,2,3,4,5,6,7,8,9,10]
var myInEvenNumberArray: [Int] = []
for evenNumber in myIntArray{
    if evenNumber % 2 == 0{
        myInEvenNumberArray.append(evenNumber)
    }
}
print("My even numbers are: \(myInEvenNumberArray)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

// Create an empty set and specify, how big range will be for random number
var setOfInt: Set<Int> = []
for number in 1...100{
    setOfInt.insert(number)
}

// Counts, how much it should loop thro to get number five and then return counter value
var counter = 1
for randomNumber in setOfInt{
    if randomNumber == 5{
        break
    }else{
        counter += 1
    }
}
print("Number 5 will be after \(counter) shuffles")


/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
var numberOfdays = 0
var bugForward = 0
let meters = 10
let metersForward = 2
let metersBackward = 1

while true{
    bugForward += (metersForward - metersBackward)  // 2m forward and 1m backward
    
    if bugForward < 10{
        numberOfdays += 1
    }else{
        break
        }
        
    }


print("Bug will spend \(numberOfdays) days to reach top of the post!")

