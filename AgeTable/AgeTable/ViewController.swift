//
//  ViewController.swift
//  AgeTable
//
//  Created by iOS Lab on 20/04/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultOutput: UILabel!
    @IBOutlet weak var ageInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func verify(_ sender: Any) {
        guard let age = Int(ageInput.text ?? ""),
              let type: Ages = Ages.ageType(age: age) else {
            return
        }
        
        resultOutput.text = "\(type.typeMessage()) você \(type.isAdult() ?  "é adulto" :  "não é adulto")"
    }
}

