//
//  Money.swift
//  SmartPrikaz
//
//  Created by Robert Grdadolnik on 17/02/16.
//  Copyright © 2016 Robert Grdadolnik. All rights reserved.
//

import Foundation

class Money: Equatable, Comparable {
    enum currency: String {
        case Euro = "€", Dollar = "$", Pound = "£", Jen = "¥"
    }
}