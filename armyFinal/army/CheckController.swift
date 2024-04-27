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
    
    private func renderMessage(user: User) {
        let alistedDateMessage = "\(user.alistedDate.isEmpty ? String() : "\(Constants.alistedDateMessage) \(user.alistedDate)")"
        
        result.text = "\(user.name) \(user.isOkSituation ? Constants.okMessage : Constants.noOkMessage) \n\(alistedDateMessage)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let user = CheckController.delegate?.getUser() else {
            return
        }
        view.backgroundColor = user.isOkSituation ? .green : .red
        renderMessage(user: user)
    }
}
