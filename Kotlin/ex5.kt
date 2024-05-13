fun analyzeString(input: String): Triple<Int, Int, Int> {
    // Initialize variables to store counts
    var wordCount = 0
    var uppercaseCount = 0
    var vowelCount = 0

    // Define vowels
    val vowels = setOf('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')

    // Split the string into words
    val words = input.split("\\s+".toRegex())

    // Iterate through each word in the string
    for (word in words) {
        // Increment word count
        wordCount++

        // Iterate through each character in the word
        for (char in word) {
            // Check if character is uppercase
            if (char.isUpperCase()) {
                uppercaseCount++
            }
            // Check if character is a vowel
            if (char in vowels) {
                vowelCount++
            }
        }
    }

    // Return the counts as a Triple
    return Triple(wordCount, uppercaseCount, vowelCount)
}

fun main() {
    // Example string
    val inputString = "Hello World! This is an Example String with 3 words, 2 UPPERCASE letters, and 6 vowels."

    // Call the function to analyze the string
    val (wordCount, uppercaseCount, vowelCount) = analyzeString(inputString)

    // Print the results
    println("Number of words: $wordCount")
    println("Number of uppercase letters: $uppercaseCount")
    println("Number of vowels: $vowelCount")
}
