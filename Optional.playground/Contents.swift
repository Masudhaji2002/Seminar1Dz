var username = "batman"
var bio: String?

func getUserInfo(){
    print("User name is \(username)")
    print("Bio is \(bio)") // ты можешь использовать ! для анпакинга, но это вызовет краш, так как био равно ничему
    
    if let unwrapperBio = bio{
        print("User bio unwrapped is \(unwrapperBio)")
    }
    
    if bio != nil{
        print("Bio unwrapped is \(bio!)")
    }
}

getUserInfo()
bio = "Dark Knight"
getUserInfo()


// MARK: Default values
var firstName = "John"
var middleName: String?
var lastName = "Smith"

func getFullName() -> String{
    let unwrapperName = middleName ?? ""
    return "\(firstName) \(unwrapperName) \(lastName)"
}
getFullName()
middleName = "Alex"
getFullName()

// MARK: Guard Statements

var email = "mmmas@yahoo.ru"
var phoneNumber: String?

func sendConfirmation(){
    print("Did call function")
    guard let number = phoneNumber else {
        print("Send email confirmation to \(email)")
        return
    }
    print("Send text confiramtion to number \(number)")
}
sendConfirmation()
phoneNumber = "444-3233-212"
sendConfirmation()
