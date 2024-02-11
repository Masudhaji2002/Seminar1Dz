import UIKit
// Перечисление с видами пиццы
enum PizzaType {
    case margherita
    case pepperoni
    case vegetarian
    case seafood
    case custom(String)
    
    var description: String {
        switch self {
        case .margherita: return "Margherita"
        case .pepperoni: return "Pepperoni"
        case .vegetarian: return "Vegetarian"
        case .seafood: return "Seafood"
        case .custom(let customType): return customType
        }
    }
}

// Перечисление с добавками
enum Topping {
    case pepperoni
    case tomatoes
    case cheese
    case mushrooms
    case olives
    case onions
    
    var description: String {
        switch self {
        case .pepperoni: return "Pepperoni"
        case .tomatoes: return "Tomatoes"
        case .cheese: return "Cheese"
        case .mushrooms: return "Mushrooms"
        case .olives: return "Olives"
        case .onions: return "Onions"
        }
    }
}

// Структура пиццы
struct Pizza {
    let type: PizzaType
    let price: Double
    let thickCrust: Bool
    let toppings: [Topping]
}

// Класс пиццерии
class Pizzeria {
    private var pizzas: [Pizza]
    
    init(pizzas: [Pizza]) {
        self.pizzas = pizzas
    }
    
    // Функция для добавления новой пиццы
    func addPizza(type: PizzaType, price: Double, thickCrust: Bool, toppings: [Topping]) {
        let pizza = Pizza(type: type, price: price, thickCrust: thickCrust, toppings: toppings)
        pizzas.append(pizza)
    }
    
    // Функция для получения всех доступных пицц
    func getAllPizzas() -> [Pizza] {
        return pizzas
    }
}

// Создание экземпляра класса пиццерии
let pizzeria = Pizzeria(pizzas: [])

// Добавление нескольких пицц в пиццерию
pizzeria.addPizza(type: .margherita, price: 9.99, thickCrust: false, toppings: [.cheese, .tomatoes])
pizzeria.addPizza(type: .pepperoni, price: 11.99, thickCrust: true, toppings: [.cheese, .pepperoni])
pizzeria.addPizza(type: .vegetarian, price: 10.99, thickCrust: false, toppings: [.cheese, .mushrooms, .olives, .onions])

// Получение всех доступных пицц
let allPizzas = pizzeria.getAllPizzas()
for pizza in allPizzas {
    let toppingsDescription = pizza.toppings.map { $0.description }.joined(separator: ", ")
    print("Type: \(pizza.type.description), Price: $\(pizza.price), Thick Crust: \(pizza.thickCrust ? "Yes" : "No"), Toppings: \(toppingsDescription)")
}
