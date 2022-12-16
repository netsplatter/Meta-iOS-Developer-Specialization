func getBalanceInfo() -> String {
    "Current balance: $\(balance)"
}

func withdraw(_ amount: Int) {
    balance -= amount
    print("Withdrew: $\(amount). \(getBalanceInfo())")
}

func debitWithdraw(_ amount: Int) {
    if amount > balance {
        print("Insufficient funds to withdraw $\(amount). \(getBalanceInfo())")
    } else {
        withdraw(amount)
    }
}

func deposit(_ amount: Int) {
    balance += amount
    print("Deposited $\(amount). \(getBalanceInfo())")
}

func creditDeposit(_ amount: Int) {
    deposit(amount)
    if balance == 0 {
        print("Paid off account balance.")
    } else if balance > 0 {
        print("Overpaid account balance.")
    }
}

print("Welcome to your virtual bank system. What kind of account would you like to make?")
print("1. Debit account")
print("2. Credit account")
print("3. Bank account")

var accountType = ""
var input = 0

repeat {
    print("Which option do you choose? (1, 2 or 3)")
    input = Int.random(in: 1...3)
    print("Selected option: \(input)")
    switch input {
    case 1: accountType = "debit"
    case 2: accountType = "credit"
    case 3: accountType = "generic"
    default: break
    }
} while accountType == ""

var balance = 100
let transferAmount = 50

print("Current balance: $\(balance)")
print("Transfer amount: $\(transferAmount)")

func transfer(_ transferType: String) {
    switch transferType {
    case "withdraw":
        if accountType == "debit" {
            debitWithdraw(transferAmount)
        } else {
            withdraw(transferAmount)
        }
    case "deposit":
        if accountType == "credit" {
            creditDeposit(transferAmount)
        } else {
            deposit(transferAmount)
        }
    default: break
    }
}

var isSystemOpened = true
var option = 0

repeat {
    print("What would you like to do?")
    print("1. Check bank account")
    print("2. Withdraw money")
    print("3. Deposit money")
    print("4. Close the system")
    print("Which option do you choose? (1, 2, 3, or 4)")
    
    option = Int.random(in: 1...5)
    print("Selected option: \(option)")
    
    switch option {
    case 1: print("Bank account balance: \(balance)")
    case 2: transfer("withdraw")
    case 3: transfer("deposit")
    case 4:
        isSystemOpened = false
        print("The system is closed.")
    default: break
    }
} while isSystemOpened


enum Table {
  case Indoors
  case Outdoors
  var description: String {
    switch self {
    case .Indoors:
      return "Use circular tables"
    case .Outdoors:
      return "Use rectangular tables"
    }
  }
}

let table = Table.Indoors
print(table.description)
