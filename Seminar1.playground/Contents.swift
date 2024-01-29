import UIKit

// 1 Создайте 5 констант разных типов, а затем 5 переменных таких же типов

let number: Int
let numberDouble: Double
let string: String
let boolean: Bool
let symvol: Character

var numbers: Int
var numberDoubles: Double
var strings: String
var booleans: Bool
var symvols: Character

// Создайте константу "а" которая будет равна 10, а затем создайте переменную "Б" которая будет равно 0. Напишите код: если "а" больше или равно 7, то увеличить "б" на 7, а если меньше, то необходимо уменьшить "б" на 7

var a = 10
var b = 0
if a >= 7 {
    b += 7 }
else {
    b -= 7
}
print(b)


// Используя переменные и константы из предыдущего задания напишите код: если "а" плюс "б" больше 15 и "б" больше или равно 7, то "Б" нужно увеличить в 2 раза, в противном случае "б" необходимо увеличить на 3

if a+b >= 15 && b >= 7 {
    b *= 2
} else{
    b *= 3
}
print(b)

// используя переменные и константы из предыдущего задания напишите код: если "а находится в диапазоне от 0 до 7, то вывести в консоль результат сложения "а" и "б", если "а" в диапазоне от 8 до 20, то вывести в консоль результат вычисления "а" - "б", если "а" в диапазоне от 21 до 50, то вывести в консоль результат переумножения "а" и "б". Во всех остальных случаях вывести в консоль, что нет подходящих диапозонов.

switch a{
case 0...7: print(a+b)
case 8...20: print(a-b)
case 21...50: print(a*b)
default: print("Нет подходящего диапозона")
}

print(a)
print(b)

/* Используя переменные и константы из предыдущего задания напишите код: если "а" больше 10 и "б" меньше 20 и "а" + "б" больше 15, то "б" уменьшить на 10, в противном случае, если "а" - "б" меньше 29, то вывести в консоль б, в противном случае увеличить "б" на 7 */
if a > 10 && b<20 && a+b > 15{
    b-=10
} else if a - b < 29{
    print(b)
} else {
    b += 7
}

/* Используя переменные и константы из предыдущего задания напишите код: если а плюс б больше 20 или б - ф меньше 7, то вывести в консоль а, в противном случае вывести в консоли б*/
if a + b > 20 || b - a < 7 {
    print(a)
} else {
    print(b)
}

/* Используя переменные и константы из предыдущего задания напишите код: если (а больше 15 или б меньше 7) и а + б - 7 не равно 17, то вывести в консоль "а", в противном случае вывести в консоли "б"*/

if (a > 15 || b < 7) && a + b - 7 != 17 {
    print(a)
}
else{
    print(b)
}
    
/* Вывести в консоль все нечетные числа от 0 до 100, используя цикл */
for number in 0...100 where number % 2 != 0{
    print(number)
}

/* Используя переменные и константы из предыдущих заданий напишите код: сделайте А переменной, затем, пока А не станет равно 50 уменьшать б на 2 */
while a != 50{
    a += 1
    b = b - 2
}

/* Используя переменные и константы из предыдущих заданий напишите код: последовательно увеличить б сначала на 3, потом на 4, потом на 5, используя цикл*/
print(b)
for number in 3 ... 5{
    b += number
    print(b)
}

/* спользуя переменные и константы из предыдущих заданий напишите код: в диапазоне от 1 до 10, если а плюс текущее число в диапазоне больше б, то увеличить б на 30, в противном случае уменьшить б на 10*/

for i in 1 ... 10{
    if a + i > b{
        b += 30
    } else{
        b -= 10
    }
}

/* Создайте переменную к, равную 5. В диапазоне от 20 до 30 (не включая 30), если текущаее число больше 25, то к уменьшить на 4, в противном случае к увеличить на 10*/

var k = 5
for i in 20..<30{
    if i > 25{
        k -= 4
    } else{
        k += 10
    }
}

/* Если к больше 20, то уменьшите к на 10, в противном случае добавьте к К 1*/

if k > 20{
    k -= 10
} else {
    k += 1
}


/* Пока К не будет равно 40 необходимо уменьшать Б на 3, а А увеличивать на 10, затем, если А наодится в диапазоне от 10 до 30, то вывести в консоль результат сложения А и Б, если А в диапазоне от 31 до 50, то вывести в консоль результат вычисления А - Б, если А в диапазоне от 51 до 100, то вывести в консоль результат перемножения А и Б. Во всех остальных случаях перейти к следующей итерации*/

while k != 40{
    b -= 3
    a += 10
    switch a{
    case 10 ... 30: print(a + b)
    case 31 ... 50: print(a - b)
    case 51 ... 100: print(a * b)
    default: continue
    }
    k += 1
}
