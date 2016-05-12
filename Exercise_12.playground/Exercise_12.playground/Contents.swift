//: Playground - noun: a place where people can play

import UIKit

/*:
 - - -
 * callout(Exercise): Leveraging protocols and the delegation design pattern, your task is to build a simple bank teller system. The teller’s job responsibilities are to open, credit, debit savings and checking accounts. The teller is not sure what really happens when they perform their responsibilities, it just works.
 **Constraints:**
 - Create an audit delegate that tracks when an account is opened, credited and debited
 - Create a protocol for which a savings and checking accounts need to conform
 - Create a teller class with customers and accounts
 - Perform the teller's responsibilities
 */



protocol AccountAuditDelegate {

    func willPerform(accountholder: String, accountNumber: String) -> String
    func performing(accountholder: String, accountNumber: String) -> String
    func didPerform(accountholder: String, accountNumber: String) -> String
}


class Teller: AccountAuditDelegate{
    
    private var Bank: String
    
    
    init(bank: String){
        self.Bank = bank
    }

    func willPerform(accountHolder: String, accountNumber: String) -> String {
        return "Account is being opened for \(accountHolder)...."
    }
    
    func performing(accountHolder: String, accountNumber: String) -> String {
        return "Account is being created..."
    }
    
    func didPerform(accountHolder: String, accountNumber: String) -> String {
        return "Account opened for \(accountHolder)!"
    }
    
    func openChecking(accountHolder: String, accountNumber: String) -> String{
        return "Checking \(self.willPerform(accountHolder, accountNumber: accountNumber))"
        
        let tempChecking = Checking(accountHolder: accountHolder, accountNumber: accountNumber)

        return "Checking \(self.performing(tempChecking.AccountHolder, accountNumber: tempChecking.accountNumber))"
        
        return "Checking \(self.didPerform(tempChecking.AccountHolder, accountNumber: tempChecking.accountNumber))"
    }
    
    func openSavings(accountHolder: String, accountNumber: String) -> String {
    
        return "Saving \(self.willPerform(accountHolder, accountNumber: accountNumber))"
        
        let tempChecking = Checking(accountHolder: accountHolder, accountNumber: accountNumber)
        
        return "Saving \(self.performing(tempChecking.AccountHolder, accountNumber: tempChecking.accountNumber))"
        
        return "Saving \(self.didPerform(tempChecking.AccountHolder, accountNumber: tempChecking.accountNumber))"

        
    }
    
    
    
}

//////////////////
class Customer{
    var name:String
    
    init(name: String){
        self.name = name
    }
}


protocol Account {
    var accountNumber: String {get}
    var balance: Double {get}
    func getBalance() -> Double
    func debit(amount: Double)
    func credit(amount: Double)
    func accountInfo() -> String
    
}


/////////////
class Savings : Account {
    
    var AccountHolder: String
    var accountNumber: String
    var balance = 0.0
    
    
    init(accountHolder: String, accountNumber: String){
        self.AccountHolder = accountHolder
        self.accountNumber = accountNumber
        balance = 0.0
    }
    
    func getBalance() -> Double {
        return balance
    }

    func debit(amount: Double) {
        self.balance = balance - amount
    }
    
    func credit(amount: Double) {
        self.balance = balance + amount
    }
    
    func accountInfo() -> String {
        return "Account Number: \(accountNumber) , Balance: \(balance)"
    }
}



//////////////
class Checking : Account {
    var AccountHolder: String
    var accountNumber: String
    var balance = 0.0
    
    
    init(accountHolder: String, accountNumber: String){
        self.AccountHolder = accountHolder
        self.accountNumber = accountNumber
        balance = 0.0
    }
    
    func getBalance() -> Double {
        return balance
    }
    
    func debit(amount: Double) {
        self.balance = balance - amount
    }
    
    func credit(amount: Double) {
        self.balance = balance + amount
    }
    
    func accountInfo() -> String {
        return "Account Number: \(accountNumber) , Balance: \(balance)"
    }
}





