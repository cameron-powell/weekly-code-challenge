static Integer divisibleSumPairs(List<Integer> list, Integer divisor, Integer listSize) {
    Integer count = 0

    // For each item in the main list
    list.eachWithIndex { first, firstIndex ->

        // Loop over everything in the list after this item
        list.subList(firstIndex+1, listSize).each { second ->

            // If the divisor divides it evenly, count it.
            if((first + second) % divisor == 0) {
                count++
            }
        }
    }

    count
}

BufferedReader stdin = new BufferedReader(new InputStreamReader(System.in))
List<String> params = stdin.readLine().split(" ")
List<Integer> list = stdin.readLine().split(" ").collect { it as Integer }

Integer listSize = params[0] as Integer
Integer divisor = params[1] as Integer

println("List size: $listSize")
println("divisor: $divisor")
println("list: $list")

Integer divisibleCount = divisibleSumPairs(list, divisor, listSize)

println("Number of divisible pairs: $divisibleCount")

