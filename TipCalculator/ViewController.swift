//
//  ViewController.swift
//  TipCalculator
//
//  Created by Ayodele Farinre on 9/29/19.
//  Copyright © 2019 Ayodele Farinre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var tiplabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    @IBAction func onTap(_ sender: Any) {
        
        print("Hello")
        view.endEditing(true) 
    }
    
    @IBAction func calculateTip(_ sender: Any) {
      //Get Bill
        let bill = Double (billField.text!) ?? 0
        
        //Calculate Tip
        let percentages = [0.15,0.18,0.2]
        
        let tip = bill * percentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip and total labels
        tiplabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
        
    }
    
    
    
    
    
    
}

