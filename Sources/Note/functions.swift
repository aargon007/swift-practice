// Sources/Note/functions.swift

public func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(hometown)."
}


// Function to calculate the factorial of a number
public func factorial(of number: Int) -> Int {
    if number == 0 {
        return 1
    } else {
        return number * factorial(of: number - 1)
    }
}