//
//  BMIViewController.swift
//  BodyCalc
//
//  Created by Jody Bailey on 12/16/17.
//  Copyright © 2017 Jody Bailey. All rights reserved.
//

import UIKit

class BMIViewController: UIViewController {

    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
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
        
        if (Int(weightTextField.text!) != nil) && (Int(heightTextField.text!) != nil){
            let weight = Int(weightTextField.text!)! * 703
            let height = Int(heightTextField.text!)! * Int(heightTextField.text!)!
            
            print(weight/height)
            
            resultLabel.text = String(weight/height)
        }else {
            resultLabel.text = String("Err")
        }
        
        self.view.endEditing(true)
        
//        func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//            self.view.endEditing(true)
//        }
        
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
