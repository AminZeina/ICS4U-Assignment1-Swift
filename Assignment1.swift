// author Amin Zeina
// version 1.0
// since 2020-02-24
// This program determines the max run of a given string using maxRun function.

func maxRun(stringEnteredSent: String) -> Int {
    var maxRunValue:Int = 1
    var currentRun:Int = 1
    
    // for loop to determine max run
    for charCounter in 1..<stringEnteredSent.count {
        // Convert stringEntered to array, allows access to specific character
        let stringEnteredArray = Array(stringEnteredSent)
        // Check if there are 2 characters in a row
        if stringEnteredArray[charCounter] == stringEnteredArray[charCounter - 1] {
            currentRun += 1 
            if currentRun > maxRunValue {
                maxRunValue = currentRun
            }
        } else {
            // Reset current run
            currentRun = 1
        }
    }
    
    return maxRunValue
}

// Declare variables
var stringEntered:String? = nil

// Ask user for input
print("Enter a string of which you want to find the max run: ")

// Get user input
stringEntered = readLine()

// Check if user actually inputted something, force unwrap because have to check contents (its ok if nil)
if stringEntered!.isEmpty == false {
    // Call maxRun function and show user, safely force unwrap stringEntered because already checked for nil value
    // Using + for stringEntered to remove spaces from print statement. ( ie. "string" vs " string ")
    print("The max run of the string “" + stringEntered! + "” is", String(maxRun(stringEnteredSent:stringEntered!)) ,".")
} else {
    print("Invalid input. Please enter a string.")
}