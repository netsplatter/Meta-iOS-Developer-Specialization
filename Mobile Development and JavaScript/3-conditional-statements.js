var age = 10
if (age >= 65) {
    console.log("You get your income from your pension")
} else if (age < 65 && age >= 18) {
    console.log("Each month you get a salary")
} else if (age < 18) {
    console.log("You get an allowance")
} else {
    console.log("THe value of the age variable is not numerical")
}

var day = "Sunday"
switch (day) {
    case "Monday": 
    console.log("Do something1")
    break

    case "Tuesday": 
    console.log("Do something2")
    break

    case "Wednesday": 
    console.log("Do something3")
    break

    case "Thursday": 
    console.log("Do something4")
    break

    case "Friday": 
    console.log("Do something5")
    break

    case "Saturday": 
    console.log("Do something6")
    break

    case "Sunday": 
    console.log("Do something7")
    break

    default: 
    console.log("There is no such day")
    break
}