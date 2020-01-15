//
//  ViewController.swift
//  Spot_Machine_Garima_Prasher
//
//  Created by Garima Prasher on 2020-01-15.
//  Copyright © 2020 Garima Prasher. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    private let donuts = ["pink donut", "choco donut", "vanilla dip donut", ""]

    @IBOutlet weak var pickerview: UIPickerView!
    
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
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return donuts[row]
        }


    



}
