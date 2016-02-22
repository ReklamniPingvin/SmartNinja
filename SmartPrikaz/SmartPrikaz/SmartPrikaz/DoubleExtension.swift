//
//  DoubleExtension.swift
//  SmartPrikaz
//
//  Created by Robert Grdadolnik on 22/02/16.
//  Copyright © 2016 Robert Grdadolnik. All rights reserved.
//

import Foundation

extension Double {
    
    func convert(target: Money.currency) -> (convertedValue: Double, targetCurrency: Money.currency.RawValue) {
        return MoneyConverter.shared.convert(self, startCurrency: Money.currency.Euro, targetCurrency: target)
    }
    
}
