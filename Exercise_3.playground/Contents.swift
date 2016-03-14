/*:
**Exercise:** You have a secret message to send. Write a playground that can encrypt strings with an alphabetical [caesar cipher](https://en.wikipedia.org/wiki/Caesar_cipher). This cipher can ignore numbers, symbols, and whitespace.
>> **Example Output:**
* Decrypted: Nearly all men can stand adversity, but if you want to test a man's character, give him power
* Encrypted: arneyl nyy zra pna fgnaq nqirefvgl, ohg vs lbh jnag gb grfg n zna'f punenpgre, tvir uvz cbjre
>> **Constraints:**
* The encrypted and decrypted text is case sensitive
* Add a shift variable to indicate how many places to shift
*/
/*:
**Checkpoint:**
At this point, you have learned the majority of the control flow statements that enable you to make decisions and execute a set of statements zero or more times until some condition is met.
*/
/*:
**Exercise:** You have a secret message to send. Write a playground that can encrypt strings with an alphabetical [caesar cipher](https://en.wikipedia.org/wiki/Caesar_cipher). This cipher can ignore numbers, symbols, and whitespace. Add a shift variable to indicate how many places to shift.
>> **Example Output:**
* Decrypted: Nearly all men can stand adversity, but if you want to test a man's character, give him power
* Encrypted: arneyl nyy zra pna fgnaq nqirefvgl, ohg vs lbh jnag gb grfg n zna'f punenpgre, tvir uvz cbjre
>> **Constraints:**
* The encrypted and decrypted text is case sensitive
* Add a shift variable to indicate how many places to shift
*/
import Foundation

let alphaLower = "abcdefghijklmnopqrstuvwxyz"
let alphaUpper = alphaLower.uppercaseString
let alphaLowerCount = alphaLower.characters.count
let alphaUpperCount = alphaUpper.characters.count

let input = "Nearly all men can stand adversity, but if you want to test a man's character, give him power."
let shiftValue = 8
var encrypted = ""
var decrypted = ""
var encrypting = true
repeat {
    // optional if encrypting is true, then the value is input string, if false, then test is assigned the encrypted string.
    
    let text = encrypting ? input : encrypted
    //iterates through each character in the text string
    for character in text.characters {
        let string = String(character)
        
        var alpha: String
        var alphaCount: Int
        //switch case, if the character is in the uppercase alphabet it assigns it there, if the character is in the lowercase alphabet it assigns it there.
        switch string {
        case _ where alphaLower.containsString(string):
            alpha = alphaLower
        case _ where alphaUpper.containsString(string):
            alpha = alphaUpper
        default:
        //assigns the character to the encrypted string, i am not sure how the decrypted string is going to get any characters.
            encrypting ? encrypted.appendContentsOf(string) : decrypted.appendContentsOf(string)
            continue
        }
        alphaCount = alpha.characters.count
        
        let found = alpha.rangeOfString(string)!
        let distance: Int
        var advancedBy: Int
        //if encrypting is true, which it is, the distance is set at the difference between the string and the count, which is the index the character is found.
        if encrypting {
            distance = alphaCount - found.startIndex.distanceTo(alpha.endIndex)
            advancedBy = (distance + shiftValue) % alphaCount
        } else {
            distance = alpha.startIndex.distanceTo(found.startIndex)
            advancedBy = (distance - shiftValue) % alphaCount
            if advancedBy < 0 {
                advancedBy = alphaCount - -advancedBy
            }

        //I think this sets the character at a a given index.
        let append = alpha.substringWithRange(alpha.startIndex.advancedBy(advancedBy)..<alpha.startIndex.advancedBy(advancedBy + 1))
        encrypting ? encrypted.appendContentsOf(append) : decrypted.appendContentsOf(append)
    }
    
    encrypting = !encrypting
} while decrypted.isEmpty

print("Decrypted: \(decrypted)")
print("Encrypted: \(encrypted)")
