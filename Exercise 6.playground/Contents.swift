/*:
**Exercise:** Leveraging the `each` and `iterator` functions above, and using the students constant below, create the following functions passing in a closure to satisfy the function requirement.
*/
let students = [
    ["first" : "Obi-Wan",   "last" : "Kenobi",      "age" : "55", "class" : "Math"],
    ["first" : "Darth",     "last" : "Vader",		"age" : "76", "class" : "Engligh"],
    ["first" : "Anakin",    "last" : "Skywalker",	"age" : "17", "class" : "History"],
    ["first" : "Darth",     "last" : "Sidious",		"age" : "88", "class" : "Science"],
    ["first" : "Padme",     "last" : "Amidala",		"age" : "25", "class" : "Math"],
    ["first" : "Mace",      "last" : "Windu",		"age" : "56", "class" : "Science"],
    ["first" : "Count",     "last" : "Dooku",		"age" : "67", "class" : "History"],
    ["first" : "Luke",      "last" : "Skywalker",	"age" : "21", "class" : "Math"],
    ["first" : "Han",       "last" : "Solo",		"age" : "35", "class" : "Science"],
    ["first" : "Leia",      "last" : "Organa",		"age" : "21", "class" : "Engligh"],
    ["first" : "Chew",      "last" : "Bacca",		"age" : "33", "class" : "Science"],
    ["first" : "Boba",      "last" : "Fett",		"age" : "32", "class" : "History"],
    ["first" : "Lando",     "last" : "Calrissian",	"age" : "55", "class" : "Engligh"],
    ["first" : "Kylo",      "last" : "Ren",			"age" : "21", "class" : "Math"],
    ["first" : "Poe",       "last" : "Dameron",		"age" : "25", "class" : "History"],
    ["first" : "Finn",      "last" : "FN-2187",		"age" : "23", "class" : "Science"],
    ["first" : "Rey",       "last" : "Rey",			"age" : "16", "class" : "Engligh"]
]

/*:
**Functions:**
* all = Returns true if all of the element is not false
* any = Returns true if at least one of the elements is not false
* indexOf = Returns the index at which element can be found
* contains = Returns true if the element is present in the list
* reject = Returns the elements in the array without the elements that pass a truth test (predicate).
* filter = Returns an array of all the elements that pass a truth test (predicate).
* pluck = Returns an array of a specific value from all the elements
*/
/*:
**Checkpoint:**
At this point, you should be able validate the parameter values using the guard statment as well as throw exceptions from a function and catch exceptions from throwing functions. We also learned about a special function called a **closure** which is able to gain access to constants and variables defined in the same context as the closure is defined.
*/
/*:
**Keywords to remember:**
- `guard` = used to test conditions and if false, short circuit the function
- `do` = indicate a block of code that handles exceptions
- `try` = execute a statement that could throw an exception
- `throw` = to make an exception happen
- `throws` = used on a function declarations to tell the caller that an exception could happen
- `catch` = block of code to execute for a specific exception
- `defer` = block of code to execute after the function exits either by completing, returning or catching
- `in` = indicates that the next set of statements are for the closure

**Constraints:**
Use the above functions to query your students.

**Example Output:**
Last names of math and sciense students where age > 25 and age < 80

    ["Kenobi", "Windu", "Solo", "Bacca"]
*/
public func each(students: [[String:String]], closure: (student: [String:String], index: Int) -> Void) {
    
    var index = 0;
    
    iterator(students) { closure(student: $0, index: index++) }
}


func iterator(students: [[String:String]], closure: (student: [String:String]) -> Void) {
            
            for var index = 0; index < students.count; ++index {
                
                closure(student: students[index])
            }
        }



func all(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> Bool {
    
    var all = true
    
    iterator(students) { (student) -> Void in
        
        if all && !closure(student: student) {
            
            all = false
        }
    }
    
    return all
}



func any((students: [[String:String]], closure: (student: [String:String]) -> Bool) -> Bool{


    var any = true

    iterator(students { (student) -> Void in
    
    if any || closure(student: student){
    
    any = 
    }

}












