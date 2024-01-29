import UIKit
// массивы и словари

// MARK: - Array
var nameStudent = [String]()
var courseStudent = [1, 2, 3, 4, 5]
nameStudent.append("Albert")
nameStudent.append("Max")
nameStudent
courseStudent.remove(at: 2)
courseStudent.removeLast()
courseStudent.insert(0, at: 0)
courseStudent
var student1 = nameStudent[0]


// MARK: - Dictionaries
var nameToEmailDict = ["Jhon": "jhon@gmail.com", "Max": "maxcorn@yandex.ru"]
var blankDict = [String: String]()
var nameToAge = ["Jhon": 20, "Albert": 22, "Max": 18]

// MARK: - Dictionaries Lookups
let jhonEmail = nameToEmailDict["Jhon"]
let jhonAge = nameToAge["Jhon"]

// MARK: - Updates dict
nameToEmailDict["Jhon"] = "jhon@yahoo.ru"
nameToEmailDict
