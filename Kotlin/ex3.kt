fun main() {
    // Prompt the user to enter a numeric grade
    println("Enter your numeric grade (between 0 and 100):")
    val numericGrade = readLine()!!.toInt()

    // Assign letter grade based on the scale
    val letterGrade = when {
        numericGrade >= 90 && numericGrade <= 100 -> "A"
        numericGrade >= 80 && numericGrade <= 89 -> "B"
        numericGrade >= 70 && numericGrade <= 79 -> "C"
        numericGrade >= 60 && numericGrade <= 69 -> "D"
        numericGrade < 60 -> "F"
        else -> "Invalid grade"
    }

    // Print the letter grade
    println("Your letter grade is: $letterGrade")
}
