//
//  ViewController.swift
//  army
//
//  Created by iOS Lab on 13/04/24.
//

import UIKit

protocol CheckControllerProtocol {
    func getUser() -> User?
}

class CheckController: UIViewController {
    @IBOutlet weak var result: UILabel!
    static var delegate: CheckControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let user = CheckController.delegate?.getUser() else {
            return
        }
        
        result.text = user.isOkSituation ? "\(user.name) está OK" : "\(user.name) NÃO está OK"
    }
}

