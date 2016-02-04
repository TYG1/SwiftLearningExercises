/*:
**Exercise:**
Your a big tipper! When ever you go out to eat you tip 20% of the bill and never tip less than $3. Create a playground that prints the tip amount and the total amount. Within the playground, you should be able to change the bill to see how the tip amount varies.
>> **Example Output:**
* `What is the bill? $x.xx`
* `What is the tip percentage? x`
* `The tip is $x.xx`
* `The total is $x.xx`
*/
import Foundation



let billAmount = 87.56
let tipPercentage = 0.2
let minTipAmount = 3.0

var tipAmount = billAmount * tipPercentage


if tipAmount < minTipAmount {
   tipAmount = minTipAmount
}


var totalAmount = billAmount + tipAmount


print("What is the bill? $\(billAmount)")
print("What is the tip percentage? $\(tipPercentage)")
print(String(format: "The tip is $%.2f", tipAmount))
print(String(format: "The total is $%.2f", totalAmount))








