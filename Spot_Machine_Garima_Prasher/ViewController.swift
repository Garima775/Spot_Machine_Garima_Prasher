//
//  ViewController.swift
//  Spot_Machine_Garima_Prasher
//
//  Created by Garima Prasher on 2020-01-15.
//  Copyright © 2020 Garima Prasher. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    @IBOutlet weak var pickerview: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 11
    }

     func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 60
    }
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {


        var myImageView = UIImageView()

        switch row {
        case 0:
            myImageView = UIImageView(image: UIImage(named:"chocodonut"))
        case 1:
            myImageView = UIImageView(image: UIImage(named:"coconutdonut"))
        case 2:
            myImageView = UIImageView(image: UIImage(named:"emptydonut"))
        case 3:
            myImageView = UIImageView(image: UIImage(named:"gemsdonut"))
        case 4:
            myImageView = UIImageView(image: UIImage(named:"pinkdonut"))
        case 5:
            myImageView = UIImageView(image: UIImage(named:"stripesdonut"))
        default:
            myImageView.image = nil

            return myImageView
        }
        return myImageView
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        // do something with selected row
    }

   
    


}

