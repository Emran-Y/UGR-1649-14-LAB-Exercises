fun main() {
    // Input distance and unit
    val distance = 10.0 // Example distance in kilometers
    val originalUnit = "kilometers"

    // Conversion factor from kilometers to miles
    val conversionFactor = 0.621371

    // Convert distance to miles
    val convertedDistance = distance * conversionFactor

    // Print the converted value
    println("$distance $originalUnit is equal to $convertedDistance miles")
}
