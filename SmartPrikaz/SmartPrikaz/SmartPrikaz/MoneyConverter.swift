//
//  Modal.swift
//  SmartPrikaz
//
//  Created by Robert Grdadolnik on 17/02/16.
//  Copyright © 2016 Robert Grdadolnik. All rights reserved.
//

import UIKit

class MoneyConverter: NSObject {

        func convert(var value: Float, startCurrency: Money.currency, targetCurrency: Money.currency) -> (convertedValue: Float, targetCurrency: Money.currency.RawValue) {
            switch(startCurrency) {
            case .Euro:
                switch(targetCurrency) {
                case .Dollar: value *= 1.12
                case .Euro: break
                case .Pound: value *= 0.77
                case .Jen: value *= 127.21
                }
            case .Dollar:
                switch(targetCurrency) {
                case .Dollar: break
                case .Euro: value *= 0.89
                case .Pound: value *= 0.69
                case .Jen: value *= 114.18
                }
            case .Pound:
                switch(targetCurrency) {
                case .Dollar: value *= 1.46
                case .Euro: value *= 1.3
                case .Pound: break
                case .Jen: value *= 163.53
                }
            case .Jen:
                switch(targetCurrency) {
                case .Dollar: value *= 0.0088
                case .Euro: value *= 0.0079
                case .Pound: value *= 0.0061
                case .Jen: break
                }
            }
            return (value, targetCurrency.rawValue)
        }

}
