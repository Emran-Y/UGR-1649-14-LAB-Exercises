fun calculateAverage(numbers: List<Double>): Double? {
    if (numbers.isEmpty()) return null
    var sum = 0.0
    for (num in numbers) {
        sum += num
    }
    return sum / numbers.size
}
