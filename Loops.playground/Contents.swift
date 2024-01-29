import UIKit
 // циклы

// MARK: - For In Loops
for i in 0 ..< 10 {
    print(i)
}

for i in 1 ... 10 {
    print(i)
}

for _ in 0 ..< 10 {
    print("hello world")
}

var shoppingCart = ["Macbook Pro", "iPad Pro", "AirPods Pro"]
for item in shoppingCart {
    print("Item name is \(item)")
}

var prices = [10,20,30,40]
var cuponPrice = 10
for price in prices{
    print("Price with cupon \(price - cuponPrice)")
}

for i in 0 ..< prices.count{
    let price = prices[i]
    print("Price is \(price), index is \(i)")
    
    prices[i] -= cuponPrice
}

var countDown = 10

while countDown >= 0 {
    print("Count down is \(countDown)")
          
    if countDown == 0 {
        print("Launch rocket!")
    }
    
    countDown -= 1
        
}
