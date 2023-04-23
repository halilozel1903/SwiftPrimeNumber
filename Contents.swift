func isPrime(_ number: Int) -> Bool {
    if number < 2 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

func findPrimes(upTo limit: Int) -> [Int] {
    var primes = [Int]()
    for number in 2...limit {
        if isPrime(number) {
            primes.append(number)
        }
    }
    return primes
}

let limit = 100
let primes = findPrimes(upTo: limit)
print("Prime numbers up to \(limit): \(primes)")
