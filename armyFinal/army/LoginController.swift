//
//  ViewController.swift
//  army
//
//  Created by iOS Lab on 13/04/24.
//

import UIKit

class LoginController: UIViewController {
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var ageInput: UITextField!
    @IBOutlet weak var alistedInput: UISwitch!
    @IBOutlet weak var genderInput: UISegmentedControl!
    @IBOutlet weak var alistedDateInput: UITextField!
    @IBOutlet weak var alistedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CheckController.delegate = self
    }
    
    @IBAction func alistedChanged(_ sender: Any) {
        alistedLabel.text = alistedInput.isOn ? Constants.alistedMessage : Constants.noAlistedMessage
        alistedDateInput.isHidden = !alistedInput.isOn
        alistedDateInput.text = String()
    }
    //    @IBAction func done(_ sender: Any) {
//    }
}

extension LoginController: CheckControllerProtocol {
    func getUser() -> User? {
        guard let name = nameInput.text,
              let alistedDate = alistedDateInput.text,
              let ageText = ageInput.text,
              let age = Int(ageText),
              let gender = UserGender(rawValue: genderInput.titleForSegment(at: genderInput.selectedSegmentIndex) ?? ""),
              !name.isEmpty else {
            
            return nil
        }
        
        return User(name: name, age: age, gender: gender, isAlisted: alistedInput.isOn, alistedDate: alistedDate)
    }
}
