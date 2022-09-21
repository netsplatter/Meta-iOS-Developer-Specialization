import Darwin
let freeApp = true

if freeApp {
    print("You are using the free version of the app. Buy the full version of the app to get access to all of its features.")
}

let morningTemperature = 70
let eveningTemperature = 80

if morningTemperature < eveningTemperature {
    print("It is colder in the morning.")
} else {
    print("It is colder in the evening.")
}

let temperatureDegree = "Fahrenheit"

if temperatureDegree == "Fahrenheit" {
    print("The app works with Fahrenheit degrees.")
} else {
    print("The app works with Celsius degrees.")
}

if temperatureDegree == "Fahrenheit" || temperatureDegree == "Celsius" {
    print("The app is configured properly.")
} else {
    print("The app isn't configured properly.")
}

switch temperatureDegree {
case "Fahrenheit": print("The app is configured for the US.")
case "Celsius": print("The app is configured for Europe.")
default: print("The app has an unknown configuration.")
}
