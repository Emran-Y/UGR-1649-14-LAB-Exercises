fun transformToUpperCase(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}


fun filterNumbersGreaterThan(list: List<Int>, threshold: Int): List<Int> {
    return list.filter { it > threshold }
}

fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, num -> acc + num }
}
