//
//  ViewController.swift
//  Segues
//
//  Created by Kevin Lee on 8/19/18.
//  Copyright © 2018 Kevin Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.textPassedOver = inputField.text!
        }
    }
    
}

