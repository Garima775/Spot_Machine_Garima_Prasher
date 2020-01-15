//
//  ViewController.swift
//  Spot_Machine_Garima_Prasher
//
//  Created by Garima Prasher on 2020-01-15.
//  Copyright © 2020 Garima Prasher. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    private let donuts = ["pink donut", "choco donut", "vanilla dip donut", "coconut donut", "stripes donut", "empty donut"]

    @IBOutlet weak var pickerview: UIPickerView!
    
    @IBAction func SPIN(_ sender: UIButton) {
    }
    
    @IBAction func PlusValue(_ sender: UIButton) {
    }
    
    @IBAction func MinusValue(_ sender: UIButton) {
    }
    
    
    @IBOutlet weak var textfield: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerview.delegate = self
        pickerview.dataSource = self
        // Do any additional setup after loading the view.
    }
}
    extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
        func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
            return donuts.count
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            textfield.text = donuts[row]
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return donuts[row]
        }


    



}
