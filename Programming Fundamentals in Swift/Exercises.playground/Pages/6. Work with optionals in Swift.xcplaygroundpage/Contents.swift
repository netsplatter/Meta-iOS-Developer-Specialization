var password = "1234"
let passcode = Int(password)
print("The passcode of the app is \(passcode!).")

password = "hello world"

if let code = Int(password) {
    print("Passcode: \(passcode)")
} else {
    print("Invalid passcode!")
}

let accessCode: Int

if let code = Int(password) {
    accessCode = code
} else {
    accessCode = 1111
}

print("The passcode of the app is \(accessCode).")

let firstPassword = "hello"
let secondPassword = "world"

if let firstPasscode = Int(firstPassword),
   let secondPasscode = Int(secondPassword) {
    print("Passcodes: \(firstPasscode), \(secondPasscode)")
} else {
    print("Error: one of the passcodes isn't valid.")
}

let firstAccessCode: Int
let secondAccessCode: Int

if let firstPasscode = Int(firstPassword),
   let secondPasscode = Int(secondPassword) {
    firstAccessCode = firstPasscode
    secondAccessCode = secondPasscode
} else {
    firstAccessCode = 1111
    secondAccessCode = 2222
}

print("Passcodes: \(firstAccessCode), \(secondAccessCode).")
