//
//  ViewController.swift
//  Age_Category
//
//  Created by iOSLab on 18/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageInput: UITextField!
    @IBOutlet weak var resultOutput: UILabel!
    
    @IBAction func category(_ sender: Any) {
        guard let age = Int(ageInput.text ?? "") else {
            resultOutput.text = "Digite um número."
            return
        }
        
        switch age {
        case ...4:
        resultOutput.text = "Primeira Infancia"
        case 4...10:
        resultOutput.text = "Segunda Infancia"
        case 10...15:
        resultOutput.text = "Pré adolescencia"
        case 15...20:
        resultOutput.text = "Adolescencia"
        case 20...26:
        resultOutput.text = "Pós adolescencia"
        case 26...40:
        resultOutput.text = "Adultidade"
        case 40...65:
        resultOutput.text = "Meia idade"
        case 65...:
        resultOutput.text = "Terceira idade"
        default:
            print("erro")
        }
    }
}

