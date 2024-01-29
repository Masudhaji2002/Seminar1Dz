import UIKit

struct User {
    let userName: String
    let fullName: String
    let age: Int
}

let user1 = User(userName: "Batman", fullName: "Bruce Wilis", age: 34)
let user2 = User(userName: "Ironman", fullName: "Tony Stark", age: 45)
print(user1.age)

struct Auto{
    let make: String
    let brand: String
    let model: String
    let year: Int
    let horsePower: Int
    
    func getAutoInfo(){
        print("This is a \(make) \(brand) \(model) that was made in \(year) and it has \(horsePower) horse power")
    }
}

let auto1 = Auto(make: "Germany", brand: "BMW", model: "M5 F90", year: 2021, horsePower: 550)
auto1.getAutoInfo()
