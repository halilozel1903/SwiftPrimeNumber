/// Returns `true` when `number` is a prime number.
///
/// The implementation checks divisibility only up to the square root of the
/// input, which avoids the unnecessary work of testing every smaller number.
func isPrime(_ number: Int) -> Bool {
    guard number >= 2 else { return false }
    guard number != 2 else { return true }
    guard !number.isMultiple(of: 2) else { return false }

    var divisor = 3
    while divisor * divisor <= number {
        if number.isMultiple(of: divisor) {
            return false
        }
        divisor += 2
    }

    return true
}

/// Finds all prime numbers from 2 through `limit`.
func findPrimes(upTo limit: Int) -> [Int] {
    guard limit >= 2 else { return [] }

    return (2...limit).filter(isPrime)
}

let limit = 100
let primes = findPrimes(upTo: limit)
print("Prime numbers up to \(limit): \(primes)")
