import UIKit

//MARK: - HW4
/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

//Declaring myTeam as Boys
let myTeam = "Boys"

// Declaring new dictionary for another team results
var resultsOfGames = Dictionary<String, String>()

// Add keys to Dictionary and default values
resultsOfGames = [
    "ATL" : "",
    "BKN" : "",
    "BOS" : "",
    "CHA" : "",
    "CHI" : "",
    "CLE" : "",
    "DAL" : "",
    "DEN" : "",
    "DET" : "",
    "GSW" : "",
    "HOU" : "",
    "IND" : "",
    "LAC" : "",
    "LAL" : "",
    "MEM" : "",
    "MIA" : "",
    "MIL" : "",
    "MIN" : "",
    "NOP" : "",
    "NYK" : "",
    "OKC" : "",
    "ORL" : "",
    "PHI" : "",
    "PHX" : "",
    "POR" : "",
    "SAC" : "",
    "SAS" : "",
    "TOR" : "",
    "UTA" : "",
    "WAS" : ""
]

// Adding some random numbers to dictionary above
for (key, _) in resultsOfGames{
    let randomNumber: Int = Int.random(in: 79..<150)
    resultsOfGames[key] = String(randomNumber)
}

// New dict for scores
var results = Dictionary<String, String>()

// Printing results
for (key,value) in resultsOfGames{
    let randomNumber2: Int = Int.random(in: 79..<150)
    print("\(myTeam) against \(key) scored - \(randomNumber2):\(value)")
    // Storing results in another dict
    results[key] = "\(randomNumber2):\(value)"

}
// Print new dict
print(results)

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

let wallet: [Int] = [5, 10, 20, 50, 100, 200, 500]

func calculateMoneyInWallet(banknotes: [Int]) -> Int{
    var budget: Int = 0
    for banknote in banknotes{
        budget += banknote
    }
    return budget
}

print(calculateMoneyInWallet(banknotes: wallet))

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(number: Int) -> Bool{
    if number % 2 == 0{
        return true
    }else{
        return false
    }
}
print(isEvenNumber(number: 4))

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */


func createArray(start: Int, end: Int) -> [Int]{
    var myArray: [Int] = []
    for number in start...end{
        myArray.append(number)
    }
    return myArray
}

var myArrayResult = createArray(start: 1, end: 100)
print(myArrayResult)

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */
var filterArrayForOdd: [Int] = []

for number in myArrayResult{
    if !isEvenNumber(number: number){
        filterArrayForOdd.append(number)
    }
}
myArrayResult = filterArrayForOdd // Overwrite values for ex.4 result array
print(myArrayResult)
