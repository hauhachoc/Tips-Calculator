//
//  ViewController.swift
//  tipsCal
//
//  Created by admin on 05/August/27.
//  Copyright (c) 27 Heisei com.mkeys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lbEnterTip: UITextField!
    @IBOutlet weak var lblTips: UILabel!
    @IBOutlet weak var lbTotal: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        lbTotal.text = "$0.00"
        lblTips.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEdittingChanged(sender: AnyObject) {
        var tipPercents = [0.18, 0.2, 0.22]
        var tipPercent = tipPercents[tipControl.selectedSegmentIndex]
        var  billAmount : Double = NSString(string: lbEnterTip.text).doubleValue
        //I can't code as lblEnterTip.text.bridgeToObjectiveC().doubleValue
        //I don't know the way to fix error
        var tip = billAmount * tipPercent
        var total = billAmount + tip
        lblTips.text = String(format: "$%.2f", tip)
        lbTotal.text = String(format: "$%.2f", total)
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}

