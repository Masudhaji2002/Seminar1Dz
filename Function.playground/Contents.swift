import UIKit

func getAge(birthYear: Int) -> Int{
    let currentYear = 2023
    let age = currentYear - birthYear
    
    return age
}

func displayAge(birthYear: Int){
    let age = getAge(birthYear: birthYear)
    
    print("You are \(age) years old")
}
displayAge(birthYear: 2003)
