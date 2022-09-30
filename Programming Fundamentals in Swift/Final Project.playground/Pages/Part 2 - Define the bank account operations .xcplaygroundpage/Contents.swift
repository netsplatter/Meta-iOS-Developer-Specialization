var balance = 100

func getBalanceInfo() -> String {
    return "Current balance: $\(balance)."
}

getBalanceInfo()

func withdraw(_ amount: Int) {
    balance -= amount
    print("Withdrew: $\(amount). \(getBalanceInfo())")
}

withdraw(20)

func debitWithdraw(_ amount: Int) {
    if amount > balance {
        print("Insufficient fund to withdraw $\(amount). \(getBalanceInfo())")
    } else {
        withdraw(amount)
    }
}

debitWithdraw(81)
debitWithdraw(80)

func deposit(_ amount: Int) {
    balance += amount
    print("Deposited: $\(amount). \(getBalanceInfo())")
}

deposit(100)

func creditDeposit(_ amount: Int) {
    deposit(amount)
    if balance == 0 {
        print("Paid off account balance.")
    } else if balance > 0 {
        print("Overpaid account balance.")
    }
}

withdraw(200)
creditDeposit(50)
creditDeposit(50)
creditDeposit(100)
