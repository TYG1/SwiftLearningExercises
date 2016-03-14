/*:
**Exercise:** Leveraging the `each` and `iterator` functions above, and using the students constant below, create the following functions passing in a closure to satisfy the function requirement.
*/

/*:
**Functions:**
* each = Iterate over each element in the array
* all = Returns true if all of the elements is not false
* any = Returns true if at least one of the elements is not false
* contains = Returns true if the element is present
* indexOf = Returns the index at which element can be found
* filter = Returns an array of all the elements that pass a truth test
* reject = Returns the elements in the array without the elements that pass a truth test
* pluck = Returns an array of a specific value from all the elements
>> **Constraints:**
Use the above functions to query your students.
>>
>> **Example Output:**
* Last names of math and sciense students where age > 25 and age < 80
* ["Kenobi", "Windu", "Solo", "Bacca"]
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
/*
// Iterate over each element in the array.  Two params, a string of dictionary type
and a closure that accepts a dictionary and returns a string.
From what I understand the first param is passed to the closure which is its own function
in a sense. Trailing closures would be good for  seems like an easier way to combine functions.
*/

func iterator(students: [[String:String]], closure: (student: [String:String]) -> Void) {
    
    for var index = 0; index < students.count; ++index {
        
        closure(student: students[index])
    }
}

public func each(students: [[String:String]], closure: (student: [String:String], index: Int) -> Void) {
    
    var index = 0;
    
    iterator(students) { closure(student: $0, index: index++) }
}

/*
// Returns true if all of the elements is not false
// A function that takes two parameters, String and a Closure,( that take a string and returns a bool). The function returns a bool value.
// The function contains a nested function, iterator, and passes the student parameter into the iterator function, which then passes that
// value to the trailing closure and tests using the logical and operator. The 
*/
public func all(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> Bool {
    
    var all = true
    
    iterator(students) { (student) -> Void in
        
        if all && !closure(student: student) {
            
            all = false
        }
    }
    
    return all
}
/*
// Returns true if at least one of the elements is not false
// Similar to the earlier function, this tests if not any and the return of the closure is true. 
I am not follwing the logic on this function, why is the var any needed? I think you can just use the closure(student: student) as you argument.
*/
public func any(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> Bool {
    
    var any = false
    
    iterator(students) { (student) -> Void in
        
        if !any && closure(student: student) {
            
            any = true
        }
    }
    
    return any
}
/*
// Returns the index at which element can be found
//I recognize the trailing closure syntax, but not sure how the index is returned? 
From what I understand, the "return index == -1 || !found ? nil : index " will return either =1 or the index.
Also it seems like this function is taking extra steps, is the "var found", the extr if statement, and the nil coalescing operator needed?
*/

public func indexOf(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> Int? {
    
    var index = -1
    var found = false
    
    iterator(students) { (student) -> Void in
        
        if !found {
            
            if closure(student: student)  {
                found = true
            }
            
            index++
        }
    }
    
    return index == -1 || !found ? nil : index
}

// Returns true if the element is present

/*
 When does this function know it has found the matching string? I am expecing to see a " .contains " 
  or  "==".  Also is the iterator function the closure in this scenario?
*/

public func contains(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> Bool {
    
    var found = false
    
    iterator(students) { (student) -> Void in
        
        if !found && closure(student: student) {
            
            found = true
        }
    }
    
    return found
}

// Returns an array of all the elements that pass a truth test
/*
This function returns a array of strings " -> [[String:String]] " 
Initializes a filter array of strings.
It looks like  " if closure(student: student) " this function appends the string if the string is not null?.
*/

public func filter(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> [[String:String]]? {
    
    var filter = [[String:String]]()
    
    iterator(students) { (student) -> Void in
        
        if closure(student: student) {
            
            filter.append(student)
        }
    }
    
    return !filter.isEmpty ? filter : nil
}

// Returns the elements in the array without the elements that pass a truth test
public func reject(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> [[String:String]]? {
    
    var keep = [[String:String]]()
    
    iterator(students) { (student) -> Void in
        
        if !closure(student: student) {
            
            keep.append(student)
        }
    }
    
    return !keep.isEmpty ? keep : nil
}

// Returns an array of a specific value from all the elements
public func pluck(students: [[String:String]], closure: (student: [String:String]) -> String) -> [String] {
    
    var plucked = [String]()
    
    iterator(students) { plucked.append(closure(student: $0)) }
    
    return plucked
}






