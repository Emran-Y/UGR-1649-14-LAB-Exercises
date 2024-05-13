fun main() {
    println("Enter the first number:")
    val num1 = readLine()!!.toDouble()

    println("Enter the second number:")
    val num2 = readLine()!!.toDouble()

    println("Enter the operation (+ for addition, - for subtraction, * for multiplication, / for division):")
    val operation = readLine()

    val result = when (operation) {
        "+" -> num1 + num2
        "-" -> num1 - num2
        "*" -> num1 * num2
        "/" -> {
            if (num2 != 0.0) {
                num1 / num2
            } else {
                println("Error: Division by zero")
                return
            }
        }
        else -> {
            println("Error: Invalid operation")
            return
        }
    }

    println("Result: $result")
}
