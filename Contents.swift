// MARK: - Variables and Constants

var studentName = "Rishabh"
let enrollmentNumber = "GE123456"
var currentYear: Int = 2
let university = "Graphic Era University"
print("Student: \(studentName), Year: \(currentYear) at \(university)")

// MARK: - Conditionals

let marks = 76
if marks >= 75 {
    print("Distinction")
} else if marks >= 60 {
    print("First Division")
} else {
    print("Needs Improvement")
}

let dayOfWeek = 3
switch dayOfWeek {
case 1:
    print("Monday")
case 2:
    print("Tuesday")
case 3:
    print("Wednesday")
default:
    print("Some other day")
}

// MARK: - Functions

func greetUser(name: String, isMorning: Bool = true) -> String {
    if isMorning {
        return "Good morning, \(name)!"
    } else {
        return "Good evening, \(name)!"
    }
}

print(greetUser(name: studentName))
print(greetUser(name: studentName, isMorning: false))

// MARK: - Loops

let topics = ["Swift", "Xcode", "Playgrounds"]
for topic in topics {
    print("Learning \(topic)")
}

var attempts = 0
while attempts < 3 {
    print("Attempt number: \(attempts + 1)")
    attempts += 1
}

var countdown = 3
repeat {
    print("Countdown: \(countdown)")
    countdown -= 1
} while countdown > 0

// MARK: - Arrays and Dictionaries

var courses = ["Math", "Science", "Programming"]
courses.append("iOS Development")
print("Courses Enrolled: \(courses)")

var marksRecord: [String: Int] = [
    "Math": 85,
    "Science": 78,
    "Programming": 92
]

marksRecord["iOS Development"] = 88

for (course, mark) in marksRecord {
    print("\(course): \(mark)%")
}

// MARK: - Optionals and Optional Chaining

var optionalPhone: String? = "9876543210"
if let phone = optionalPhone {
    print("Contact number is \(phone)")
} else {
    print("No contact number provided.")
}

struct Address {
    var city: String
    var zipCode: Int
}

struct Profile {
    var username: String
    var address: Address?
}

let userProfile = Profile(username: "Rishabh", address: Address(city: "Dehradun", zipCode: 248001))
print("City: \(userProfile.address?.city ?? "Not available")")

// MARK: - Guard Statement

func validate(age: Int?) {
    guard let age = age, age >= 18 else {
        print("Not eligible")
        return
    }
    print("Eligible with age \(age)")
}

validate(age: 20)
validate(age: 15)
validate(age: nil)
