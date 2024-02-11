import UIKit

// Структура для картошки фри
struct FrenchFries {
    let price: Double
    let size: String
}

// Класс пиццерии
class Pizzeria {
    private var menuItems: [Any] = [] // Переменная для хранения пиццы и картошки фри
    
    // Функция для добавления новой позиции в меню
    func addMenuItem(item: Any) {
        menuItems.append(item)
    }
}

// Протокол для открытия и закрытия
protocol OpenClose {
    func open()
    func close()
}

// Расширение класса пиццерии для реализации протокола OpenClose
extension Pizzeria: OpenClose {
    func open() {
        print("Pizzeria is now open!")
    }
    
    func close() {
        print("Pizzeria is now closed!")
    }
}

// Функция для вычитания чисел любого типа
func subtract<T: Numeric>(_ a: T, _ b: T) -> T {
    return a - b
}

// Пример использования функции
let resultInt = subtract(10, 5)
print("Result (Int): \(resultInt)")

let resultDouble = subtract(10.5, 3.2)
print("Result (Double): \(resultDouble)")
