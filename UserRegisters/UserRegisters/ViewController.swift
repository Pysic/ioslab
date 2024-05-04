//
//  ViewController.swift
//  UserRegisters
//
//  Created by iOS Lab on 04/05/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var segmented: UISegmentedControl!
    @IBOutlet weak var result: UITextView!
    let manager = UsersManager()
    
    private func renderResult(names: String) {
        result.text = names
    }
    
    private func renderError() {
        let alert = UIAlertController(title: "Ocorreu um erro", message: "Digite um nome válido", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func addUser(_ sender: Any) {
        guard let name = nameInput.text,
              let gender = Gender(rawValue: segmented.selectedSegmentIndex),
              !name.isEmpty else {
            renderError()
            return
        }
        
        let user = User(name: name, gender: gender)
        manager.addUser(user: user)
        renderResult(names: manager.getUsers())
    }
}
