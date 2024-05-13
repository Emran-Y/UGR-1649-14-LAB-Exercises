fun main() {
    // Prompt the user to enter a string
    println("Enter a string:")
    val inputString = readLine() ?: ""

    // Check if the string is not empty
    if (inputString.isNotEmpty()) {
        // Initialize variables to store minimum and maximum characters
        var minChar = inputString[0]
        var maxChar = inputString[0]

        // Iterate through each character in the string
        for (char in inputString) {
            // Update minimum character if necessary
            if (char < minChar) {
                minChar = char
            }
            // Update maximum character if necessary
            if (char > maxChar) {
                maxChar = char
            }
        }

        // Print the minimum and maximum characters
        println("Minimum character: $minChar")
        println("Maximum character: $maxChar")
    } else {
        println("The input string is empty.")
    }
}
