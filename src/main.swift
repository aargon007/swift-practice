import Foundation

// print("Hello, World! first swift project")

// Function to calculate the factorial of a number
func factorial(of number: Int) -> Int {
    if number == 0 {
        return 1
    } else {
        return number * factorial(of: number - 1)
    }
}

// Example usage
let number = 5
let result = factorial(of: number)

print("The factorial of \(number) is \(result).")
