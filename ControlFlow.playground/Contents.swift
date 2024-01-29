import UIKit

class Pizza{
    var name = "Peperoni"
    func showName(){
        print("You order \(name) pizza")
    }
    func makeCheeze(){
        name = "For Cheeze"
    }
    func makeChezar(){
        name = "Chezar"
    }
}
let myPizza = Pizza()
myPizza.showName()
myPizza.makeCheeze()
myPizza.showName()

var array1 = [1, 5, 10, 23, 75, 20]
print(array1.first!)
print(array1.last!)
print(array1.capacity)
print(array1.sorted())
