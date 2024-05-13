fun main() {
    // Declare variables
    val originalPrice = 100.0 // Example original price
    var discountPercentage = 0.6 // Example discount percentage (60%)
    val threshold = 0.5 // Threshold value for the discount percentage

    // Check if the discount is greater than the threshold
    if (discountPercentage > threshold) {
        println("The discount percentage is too high. Setting it to the threshold value of ${threshold * 100}%.")
        discountPercentage = threshold
    }

    // Calculate final price after discount
    val finalPrice = originalPrice * (1 - discountPercentage)

    // Print original price, discount percentage, and final price
    println("Original Price: $$originalPrice")
    println("Discount Percentage: ${discountPercentage * 100}%")
    println("Final Price after Discount: $$finalPrice")
}
