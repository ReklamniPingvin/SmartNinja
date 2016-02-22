//
//  ViewController.swift
//  SmartPrikaz
//
//  Created by Robert Grdadolnik on 11/02/16.
//  Copyright © 2016 Robert Grdadolnik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var USD: UIButton!
    @IBOutlet var JPY: UIButton!
    @IBOutlet var converter: UIButton!
    @IBOutlet var result: UILabel!
    private var newValute: Money.currency = .Euro
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.result.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func JPYPressed(sender: UIButton) {
        self.USD.backgroundColor = UIColor.whiteColor()
        self.JPY.backgroundColor = UIColor.redColor()
        newValute = .Jen
    }
    @IBAction func USDPressed(sender: UIButton) {
        self.JPY.backgroundColor = UIColor.whiteColor()
        self.USD.backgroundColor = UIColor.redColor()
        newValute = .Dollar
    }
    
    @IBAction func converterPressed(sender: UIButton) {
        if self.textField.text != "" && self.textField.text != nil{
            if let number = Double(self.textField.text!) {
            let convertedResult = MoneyConverter.shared.convert(number, startCurrency: .Euro, targetCurrency: newValute)

            self.result.text = " \(String(convertedResult.convertedValue)) \(convertedResult.targetCurrency)"
            }
        }
    }
}

