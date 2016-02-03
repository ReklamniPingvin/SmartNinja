//: Playground - noun: a place where people can play

import UIKit

// https://sl.wikipedia.org/wiki/Fibonaccijevo_%C5%A1tevilo
// Fibonnaci - ITERACIJA
func fibonacci_I(n: Int) -> Int {
    
    // začasne spremenljivke
    var current = 0
    var next = 1
    
    // iteracija
    for _ in 0..<n {
        let temp = current
        current = next
        next =  next + temp
    }
    return current
}

// Fibonnaci - REKURZIJA
func fibonacci_R(n: Int) -> Int {
    if n == 0 {
        return 0
    }
    else if n == 1 || n == 2 {
        return 1
    }
    else {
        return fibonacci_R(n - 1) + fibonacci_R(n - 2)
    }
}

// ITERACIJA: zanka za vrednosti od 0 do 20
for i in 0..<20 {
    let result = fibonacci_I(i)
    print("Fibonacci \(i) = \(result)")
}

// REKURZIJA: zanka za vrednosti od 0 do 20
for i in 0..<20 {
    let result = fibonacci_R(i)
    print("Fibonacci \(i) = \(result)")
}
