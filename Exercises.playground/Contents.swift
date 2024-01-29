import UIKit

// MARK: - четное не четное

func printOddOrEven(showEven: Bool, lowerBound: Int, upperBound: Int){
    for i in lowerBound ... upperBound{
        if showEven{
            if i % 2 == 0{
                print(i)
            }
        } else {
            if i % 2 != 0{
                print(i)
            }
        }
    }
}
printOddOrEven(showEven: false, lowerBound: 5, upperBound: 30)
    
// MARK: - sum

var nums = [5,2,1,4,7,8]

func computeSum() -> Int{
    var sum = 0
    for num in nums {
        sum += num
    }
    return sum
}

computeSum()

// MARK: - max

func computeMax() -> Int{
    var max = 0
    for num in nums {
        if num > max{
            max = num
        }
    }
    return max
    
}
computeMax()

func computeMin() -> Int{
    var min = Int.max
    print("Min is \(min)")
    for num in nums {
        if num < min{
           min = num
            
           print("Current min is \(min)")
        }
            print("New min is \(min)")
        
    }
    return min
}

computeMin()

    // MARK: - Guest
struct Guest {
    let name: String
    let age: Int
    let isAttending: Bool
}

struct GuestList{
    var guests: [Guest]
    
    func searchForGuest(name: String) -> Bool{
        
        for guest in guests{
            print("Searching")
            if name.lowercased() == guest.name.lowercased(){
                print("Found guest")
                return true
            }
        }
        print("Could not find guest")
        return false
    }
    
    func getUserLessThenAge(age: Int) -> [Guest]{
        var result = [Guest]()
        
        for guest in guests {
            if guest.age <= age{
                result.append(guest)
            }
        }
        
        return result
    }

    
    func getNumberOfAtendes() -> Int {
        var count = 0
        
        for guest in guests {
            if guest.isAttending{
                count += 1
            }
        }
        return count
    }
    
    func getNumberOfNotAftendes() -> Int{
        var count = 0
        
        for guest in guests {
            if !guest.isAttending{
                count += 1
            }
        }
        return count
    }
    
    func printReport(){
        //print number coming
        print("There are \(getNumberOfAtendes()) guests attending")
        //priht not coming
        print("There are \(getNumberOfNotAftendes()) not attending")
        // print number of people not allowed to drink
        let guestsUnder21 = getUserLessThenAge(age: 18)
        let numGuestsUnder21 = guestsUnder21.count
        print("There are \(numGuestsUnder21) guests not allowed to consume alcohol")
    }
    
}

let g1 = Guest(name: "Brain", age: 20, isAttending: true)
let g2 = Guest(name: "Mikle", age: 21, isAttending: true)
let g3 = Guest(name: "Albert", age: 30, isAttending: true)
let g4 = Guest(name: "Alex", age: 16, isAttending: false)
let g5 = Guest(name: "Niko", age: 17, isAttending: false)

let guestList = GuestList(guests: [g1, g2, g3, g4, g5])
guestList.printReport()
guestList.searchForGuest(name: "Alex")
guestList.getUserLessThenAge(age: 20)

// MARK: - Cart

struct Product{
    let name: String
    var price: Double
    
    // применить скидку при оплате наличными  amount = количество
    mutating func applyCashDiscount(amount: Double) {
        self.price -= amount
    }
    
    // применить процентную скидку  percentage = процент
    mutating func applyPercentageDiscount(percentage: Double) {
        price *= (1 - percentage) // 10 * (1 - 0.2) = 10 * 0.8
    }
}

struct Cart {
    var items: [Product]
    
    mutating func addItem(product: Product){
        items.append(product)
    }
    
    mutating func removeItem(product: Product){
        for i in 0 ..< items.count{
            let item = items[i]
            if item.name == product.name && item.price == product.price{
                self.items.remove(at: i)
                return
            }
        }
    }
    
    func getTotal() -> Double {
        var result = 0.0
        
        for item in items {
            result += item.price
        }
        return result
    }
    
    func printReceipt(){
        for i in 0 ..< items.count{
            let product = items[i]
            print("Item \(i + 1): \(product.name) --- $\(product.price)")
        }
        print("Total")
        print("------------------")
        print("$\(getTotal())")
    }
}

var p1 = Product(name: "Macbook Air M1", price: 2000)
var p2 = Product(name: "Apple Watch", price: 500)
var p3 = Product(name: "AirPods Pro 2", price: 149.99)

var cart = Cart(items: [p1, p2, p3])
var p4 = Product(name: "Iphone 15 Pro Max", price: 1499.98)
p4.applyCashDiscount(amount: 100)
cart.addItem(product: p4)
cart.printReceipt()

cart.removeItem(product: p4)
cart.printReceipt()
