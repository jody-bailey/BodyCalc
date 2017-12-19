//
//  ViewController.swift
//  BodyCalc
//
//  Created by Jody Bailey on 12/16/17.
//  Copyright © 2017 Jody Bailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bmiButton: UIButton!
    @IBOutlet weak var bmrButton: UIButton!
    @IBOutlet weak var tdeeButton: UIButton!
    @IBOutlet weak var bodyFatButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.bmiButton.layer.cornerRadius = 23
        self.bmrButton.layer.cornerRadius = 23
        self.tdeeButton.layer.cornerRadius = 23
        self.bodyFatButton.layer.cornerRadius = 23
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func BMIButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToBMI", sender: self)
        
    }
    
    @IBAction func BMRButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToBMR", sender: self)
        
    }
    
    @IBAction func TDEEButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToTDEE", sender: self)
        
    }
    
    @IBAction func BodyFatButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToBodyFat", sender: self)
        
    }
}

