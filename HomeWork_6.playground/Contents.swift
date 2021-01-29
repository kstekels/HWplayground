// Mark: Home Work nr. 6

import UIKit

/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */

enum CalculationType: String{
    case addition = "+", substraction = "-", multiplication = "*", division = "/"
}

/*
 Exercise 1.1
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument and SecondNumber, parametrs numberTwo, data type Int ,+ argument with CalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 Than use switch case to calculate and return Int result
    var result = numberOne
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
 */

func calculateResult(firstNumber numberOne: Int, SecondNumber numberTwo: Int, CalculationType calculationType: CalculationType) -> Int{
    var result = numberOne
    switch calculationType {
    case .addition:
        result += numberTwo
    case .substraction:
        result -= numberTwo
    case .multiplication:
        result *= numberTwo
    case .division:
        result /= numberTwo
    }
    print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")  // >>>>> Result:  + 10 and 8 = 18

return result
}

/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/

let numA = 6
let numB = 3

calculateResult(firstNumber: numA, SecondNumber: numB, CalculationType: .addition)           //Result:  + 6 and 3 = 9
calculateResult(firstNumber: numA, SecondNumber: numB, CalculationType: .substraction)       //Result:  - 6 and 3 = 3
calculateResult(firstNumber: numA, SecondNumber: numB, CalculationType: .multiplication)     //Result:  * 6 and 3 = 18
calculateResult(firstNumber: numA, SecondNumber: numB, CalculationType: .division)           //Result:  / 6 and 3 = 2

/*
Exercise 2
Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int
 Create func getSpecs() print it with elements provided above
 */


struct Car{
    var name: String
    var productionYear: Int
    var horsPower: Int
    
    func getSpecs(){
        print("Car name: \(name), production year: \(productionYear), horse powers: \(horsPower)")
    }
}


/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
Than run getSpecs() for audiQ7 and audiTT
 */

let audiQ7 = Car(name: "Audi Q7", productionYear: 2021, horsPower: 381)
var audiTT = audiQ7
audiTT.name = "Audi TT"

audiQ7.getSpecs() //Result: Car name: Audi Q7, production year: 2021, horse powers: 381

audiTT.getSpecs() //Result: Car name: Audi TT, production year: 2021, horse powers: 381


