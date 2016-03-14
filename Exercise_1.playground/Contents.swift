//
//
//Your a big tipper! When ever you go out to eat you tip 20% of the bill and
//never tip less than $3. Create a playground that prints the tip amount and
//the total amount. Within the playground, you should be able to change the
//bill to see how the tip amount varies.
//
//
//Example Output:
//
//
//What is the bill? $x.xx
//What is the tip percentage? x
//The tip is $x.xx
//The total is $x.xx
//Constraints:
//
//Don't use the String(format:, _, _) initilizer
//Use the remainder operator while creating the string
//Use the ternary conditional operator

let tipPercentage = 0.20;
var billAmount = 100.0;
var tipAmount = billAmount * tipPercentage;

if (tipAmount < 3){
    tipAmount = 3.0;
};

var totalAmount = billAmount + tipAmount;


print("What is the bill?   $\(billAmount)");
print("What is the tip percentage?   \(tipPercentage)");
print("The tip is $\(tipAmount)" );
print("The total is $\(totalAmount)");
