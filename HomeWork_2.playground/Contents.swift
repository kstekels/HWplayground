import UIKit


/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */

var firstNum: Float = 3.14
var secondNum: Float = 42.0

var resultOfSum: Double = Double(firstNum + secondNum)
//print("\(firstNum) + \(secondNum) = \(resultOfSum)")
let formatted = String(format: "%.2f", resultOfSum) // Format floating-point precision for data type "Double"
print("\(firstNum) + \(secondNum) = \(formatted)")

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */

var numberOne = 55
var numberTwo: Int = 30
let result = numberOne / numberTwo
let reminderOfDivision = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(reminderOfDivision)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var macBookProPrice: Int
var numberOfComputers: Int = 10
var total :Int

if numberOfComputers < 5{
    macBookProPrice = 1000
}else if numberOfComputers >= 5 && numberOfComputers < 10{
    macBookProPrice = 900
}else{
    macBookProPrice = 850
}
total = numberOfComputers * macBookProPrice

print("New: \(numberOfComputers) MacBook Pro with the price of: \(macBookProPrice) EUR, will cost you: \(total) EUR")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

/*
---------------------------------
    This will cause an error!
---------------------------------
var userInputAge: String? = "33a"
var stringToInt = Int(userInputAge) // <<<--- In this line error will appear
*/

// Working solution to fix that issue, what was written above ...

var userInputAge: String? = "33" // Otional

if let str = userInputAge, let isInt = Int(str){
    print("Intager value: \(isInt)")
}else{
    print("This is not a valid intager value for casting: \(String(describing: userInputAge))! Please, use whole numbers!")
}


/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */
import Foundation
//
let now = Date()
let calendar = Calendar.current

// Birthday info d = day, m = month, y = year
let d = 15
let m = 12
let y = 1994

var myBirthday = DateComponents()
myBirthday.day = d
myBirthday.month = m
myBirthday.year = y

let birthday = calendar.date(from: myBirthday)!
let numberOfDaysMonthsYears = calendar.dateComponents([.day, .month, .year], from: birthday, to: now)

// Converting Int to Str
var days_total = numberOfDaysMonthsYears.day // get int: days
var totalDaysFromBirth = String(days_total ?? 0)
var months_total = numberOfDaysMonthsYears.month // get int: months
var totalMonthFromBirth = String(months_total ?? 0)
var years_total = numberOfDaysMonthsYears.year // get int: years
var totalYearsFromBirth = String(years_total ?? 0)

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

let quarter: Int = d

switch quarter {
case 1...3:
    print("I was born in the first quarter")
case 4...6:
    print("I was born in the second quarter")
case 7...9:
    print("I was born in the third quarter")
case 10...12:
    print("I was born in the fourth quarter")
default:
    break
}
