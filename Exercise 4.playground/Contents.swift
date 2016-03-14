/*:
**Exercise:** You have to record all the students for your school. Leveraging arrays, dictionaries, and sets, create table like containers for each class. Your classes are Math, Science, English and History with a total of 17 unique students with 7 students in each class. Print out each class roster and experiment with set operations, membership and equality.
>> **Example Output:**
* `Math = Mathew Sheets, John Winters, Sam Smith`
* `Science = Sam Smith, Carson Daily, Adam Aarons`
* `Union of Math and Science = Mathew Sheets, John Winters, Sam Smith, Carson Daily, Adam Aarons`
>> **Constraints:**
* Use Set Operations
* intersect
* exclusiveOr
* union
* subtract
* Use Set Membership and Equality
* is equal
* isSubsetOf
* isSupersetOf
* isStrictSubsetOf
* isStrictSupersetOf
* isDisjointWith
*/
/*:
**Checkpoint:**
At this point, you should have a basic understanding of the collection types provided by the Swift programming language. Using arrays, you can store a collection of ordered values. Using sets, you can store a collection of unordered unique values. Using dictionaries, you can store a collection of key-value associations. With these three collection types, processing and manipulating data will be easier.
*/

var students = [
    "Marvella Lomax",
    "Christeen Laughter",
    "Julia Tinker",
    "Bernardo Eyler",
    "Deangelo Sumpter",
    "Annita Knighten",
    "Hailey Likens",
    "Jesusita Loach",
    "Robena Larochelle",
    "Jerrie Vachon",
    "Kyoko Natale",
    "Lashawn Lowrey",
    "Kris Trembley",
    "Cornelia Patricia",
    "Savannah Hennig",
    "Jackson Na",
    "Vernetta Bavaro",
    "Truman Nicolas",
    "Dean La",
    "Hayden Burrill",

]


let allTheStudents = Set(students)
var mathClass = Set<String>()
var scienceClass = Set<String>()
var englishClass = Set<String>()
var historyClass = Set<String>()



historyClass.insert(students[1])
historyClass.insert(students[4])
historyClass.insert(students[7])
historyClass.insert(students[9])
historyClass.insert(students[13])
historyClass.insert(students[15])
historyClass.insert(students[16])



englishClass.insert(students[2])
englishClass.insert(students[3])
englishClass.insert(students[5])
englishClass.insert(students[6])
englishClass.insert(students[10])
englishClass.insert(students[14])
englishClass.insert(students[8])



mathClass.insert(students[4])
mathClass.insert(students[7])
mathClass.insert(students[8])
mathClass.insert(students[11])
mathClass.insert(students[1])
mathClass.insert(students[14])
mathClass.insert(students[13])



scienceClass.insert(students[12])
scienceClass.insert(students[16])
scienceClass.insert(students[17])
scienceClass.insert(students[9])
scienceClass.insert(students[2])
scienceClass.insert(students[6])
scienceClass.insert(students[5])"S"


for (students in scienceClass){

}

let unionOfMathAndScience = mathClass.intersect(scienceClass)

let unionOfHistoryAndEnglish = historyClass.intersect(englishClass)



let studentsTakingAllClasses = unionOfHistoryAndEnglish.isDisjointWith(unionOfMathAndScience)


print("Math: ")

print("Science: ")

print("Union of Math and Science: ")















