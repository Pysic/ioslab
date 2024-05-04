//
//  User.swift
//  UserRegisters
//
//  Created by iOS Lab on 04/05/24.
//

enum Gender: Int {
    case masculine
    case feminine
    
    func getValue() -> String {
        switch self {
        case .masculine:
            "masculino"
        case .feminine:
            "feminino"
        }
    }
}

struct User {
    let name: String
    let gender: Gender
}
