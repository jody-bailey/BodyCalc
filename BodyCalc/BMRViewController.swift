//
//  BMRViewController.swift
//  BodyCalc
//
//  Created by Jody Bailey on 12/17/17.
//  Copyright © 2017 Jody Bailey. All rights reserved.
//

import UIKit

class BMRViewController: UIViewController {

    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var genderSelector: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.calculateButton.layer.cornerRadius = 23
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        if genderSelector.selectedSegmentIndex == 0{
            if (Int(heightTextField.text!) != nil) && (Int(weightTextField.text!) != nil) && (Int(ageTextField.text!) != nil){
                
                
                let height : Int = Int(heightTextField.text!)!
                let weight : Int = Int(weightTextField.text!)!
                let age : Int = Int(ageTextField.text!)!
                
                var result = 66 + (6.23 * Double(weight)) + (12.7 * Double(height))
                result -= (6.8 * Double(age))
                
                resultLabel.text = String(Int(result))
                
            }
        } else if genderSelector.selectedSegmentIndex == 1{
            if (Int(heightTextField.text!) != nil) && (Int(weightTextField.text!) != nil) && (Int(ageTextField.text!) != nil){
                
                let height : Int = Int(heightTextField.text!)!
                let weight : Int = Int(weightTextField.text!)!
                let age : Int = Int(ageTextField.text!)!
                
                var result = 655 + (4.35 * Double(weight)) + (4.7 * Double(height))
                result -= (4.7 * Double(age))
                
                resultLabel.text = String(Int(result))
                
            }
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
