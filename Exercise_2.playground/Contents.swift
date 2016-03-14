/*:
**Exercise:** Get Acquainted. Get a few properties of each student in your class... name and email are good. Use the `String` and `Character` as well as the data types and operators in [Basics | Data Types | Operators](Basics%20|%20Data%20Types%20|%20Operators) to complete this exercise.
>> **Example Output:**
* `My name is Mathew Sheets, my email is swift.dude@gmail.com.`
* `Other students in my class are Annie, Sam, Jack, Hudson and Oliver.`
* `Oliver dropped this class.` (**use the second bullet point string to pull out the last students's name.**)
* `Other students in my class are Annie, Sam, Jack, Hudson and CARSON was added.`  (**use the second bullet point string and append another student.**)
* `Jack and Hudson are in the class.` (**use the second bullet point string to pull out third and fourth student.**)
>> **Constraints:**
* Use a nested tuple to hold your students
* Use the string created from the second bullet point for all other string creation
*/
import Foundation

let students = ((firstName: "George", email: "george@gmail.com"), (firstName: "Chidi", email: "chidi@gmail.com"),
                (firstName: "Scott",  email: "scott@email.com"),  (firstName: "Duane", email: "duane@gmail.com"),
                (firstName: "Tarek", email: "tarek@gmail.com"), (firstName: "Prakash", email: "prakash@gmail.com"))



let myName = students.0.firstName


print("My name is \(students.0.firstName), my email is \(students.0.email).")

print("Other students in my class are \(students.1.firstName), \(students.2.firstName), \(students.3.firstName) and \(students.4.firstName).")

print("\(students.5.firstName) dropped this class.")

print("Other studens in my class are \(students.2.firstName), \(students.3.firstName), \(students.4.firstName), \(students.5.firstName) and")

print("\(students.3.firstName) and \(students.4.firstName) are in the class.")
