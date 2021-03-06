/*:
**Exercise:** Get Acquainted. Get a few properties of each person in your class... name and email are good. Use the `String` and `Character` as well as the data types and operators in [Basics | Data Types | Operators](Basics%20|%20Data%20Types%20|%20Operators) to complete this exercise.
>> **Example Output:**
* `My name is Mathew Sheets, my email is swift.dude@gmail.com.`
* `Other students in my class are Annie, Sam, Jack, Hudson, Oliver.`
* `Oliver dropped this class.` (**use the second string to pull out the last persons name.**)
* `Other students in my class are Annie, Sam, Jack, Hudson and CARSON was added.`  (**use the second string and append another person.**)
* `Jack and Hudson are in the class.` (**use the second string to pull out third and fourth person.**)
*/
// Use tuples..  think of this nested structure like a database, or a group of data you kjnow how to retrive basd on index or the baility to search through
//checking and parsing, string indexes, and string operations.

import Foundation

let students = (
    (first: "George", last: "Gebretensai", email: "gebretensai90@gmail.com"),
    (first: "Chidi", last: "Emeh", email: "chidiemeh184@gmail.com"),
    (first: "Scott", last: "Mink", email: "scott@internetfun.com"),
    (first: "Tareq", last: "Khalaf", email: "tareqkhalaf.85@gmail.com"),
    (first: "Jorge", last: "Vallejos", email: "jvallejo@cscc.edu"),
    (first: "Peter", last: "Carswell", email: "pcarswel@cscc.edu")
)
let newStudent = (first: "Prakash", last: "lastName", email: "prakash@gmail.com")

var otherStudents = "Other students in my class are \(students.1.first), \(students.2.first), \(students.3.first), \(students.4.first) and \(students.5.first)."

let firstStudent = students.0

let lastStudent = students.5
let lastStudentToFind = " and \(lastStudent.first)"
let lastStudentRange = otherStudents.rangeOfString(lastStudentToFind)!
let lastStudentStrTmp = otherStudents.substringWithRange(lastStudentRange)
let lastStudentStr = lastStudentStrTmp.substringFromIndex(lastStudentStrTmp.startIndex.advancedBy(5))

let newOtherStudents = otherStudents.substringToIndex(otherStudents.endIndex.advancedBy(-lastStudentToFind.characters.count))

let thirdStudent = students.3
let thirdStudentToFind = thirdStudent.first
let thirdStudentRange = otherStudents.rangeOfString(thirdStudentToFind)!
let thirdStudentStr = otherStudents.substringWithRange(thirdStudentRange)

let fourthStudent = students.4
let fourthStudentToFind = fourthStudent.first
let fourthStudentRange = otherStudents.rangeOfString(fourthStudentToFind)!
let fourthStudentStr = otherStudents.substringWithRange(fourthStudentRange)

print("My name is \(firstStudent.first) \(firstStudent.last), my email is \(firstStudent.email).")
print(otherStudents)
print("\(lastStudentStr) dropped this class.")
print("\(newOtherStudents)and \(newStudent.first.uppercaseString) was added.")
print("\(thirdStudentStr) and \(fourthStudentStr) are in the class.")

