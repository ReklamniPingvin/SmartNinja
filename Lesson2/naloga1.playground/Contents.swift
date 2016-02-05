//: Playground - noun: a place where people can play

import UIKit

class Money {
    enum currency: String {
        case Euro = "€", Dollar = "$", Pound = "£"
    }
}

class MoneyConverter {
    func convert(var value: Float, startCurrency: Money.currency, targetCurrency: Money.currency) -> (convertedValue: Float, targetCurrency: Money.currency) {
        switch(startCurrency) {
            case .Euro:
                switch(targetCurrency) {
                    case .Dollar: value *= 1.12
                    case .Euro: break
                    case .Pound: value *= 0.77
                }
            case .Dollar:
                switch(targetCurrency) {
                    case .Dollar: break
                    case .Euro: value *= 0.89
                    case .Pound: value *= 0.69
            }
            case .Pound:
                switch(targetCurrency) {
                    case .Dollar: value *= 1.46
                    case .Euro: value *= 1.3
                    case .Pound: break
            }
        }
        return (value, targetCurrency)
    }
}

let euroToPound = MoneyConverter().convert(10, startCurrency: .Euro, targetCurrency: .Pound)
let dollarToEuro = MoneyConverter().convert(10, startCurrency: .Dollar, targetCurrency: .Euro)
let poundToDollar = MoneyConverter().convert(10, startCurrency: .Pound, targetCurrency: .Dollar)

print(dollarToEuro.convertedValue, dollarToEuro.targetCurrency.rawValue)




















