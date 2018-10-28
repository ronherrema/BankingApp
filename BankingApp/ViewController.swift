//
//  ViewController.swift
//  BankingApp
//
//  Created by R J Herrema on 28/10/2018.
//  Copyright © 2018 R J Herrema. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var account = BankAccount()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.enterAmount.delegate = self
        
    }

    
    @IBOutlet weak var enterAmount: UITextField!
    
    @IBOutlet weak var displayBalance: UILabel!
    
    @IBAction func enterDeposit(_ sender: UIButton) {
        let doubleFromString = Double(enterAmount.text!)
        account.balance += doubleFromString!
        displayBalance.text = "£" + String(format: "%.2f", account.balance)
    }
    
    @IBAction func withdrawMoney(_ sender: UIButton) {
        let doubleFromString = Double(enterAmount.text!)
        account.balance -= doubleFromString!
        displayBalance.text = "£" + String(format: "%.2f", account.balance)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return false
    }
}

