import kotlin.random.Random

fun main() {
    // Define the length of the password
    val passwordLength = 12 // Example password length

    // Define characters to include in the password
    val lowercaseLetters = "abcdefghijklmnopqrstuvwxyz"
    val uppercaseLetters = lowercaseLetters.toUpperCase()
    val numbers = "0123456789"
    val specialSymbols = "!@#$%^&*()_+[]{}|;:,.<>?/~"

    // Concatenate all possible characters
    val allCharacters = lowercaseLetters + uppercaseLetters + numbers + specialSymbols

    // Initialize an empty string to store the password
    var password = ""

    // Generate the password
    repeat(passwordLength) {
        // Randomly select a character from allCharacters
        val randomIndex = Random.nextInt(allCharacters.length)
        val randomChar = allCharacters[randomIndex]
        // Append the randomly selected character to the password
        password += randomChar
    }

    // Print the generated password
    println("Generated Password: $password")
}
