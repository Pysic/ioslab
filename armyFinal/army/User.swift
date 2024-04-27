//
//  User.swift
//  army
//
//  Created by iOS Lab on 13/04/24.
//

import Foundation

enum UserGender: String {
    case feminine = "Feminino"
    case masculine = "Masculino"
}

struct User {
    let name: String
    let age: Int
    let gender: UserGender
    let isAlisted: Bool
    let alistedDate: String
    var isOkSituation: Bool {
        if (gender == .masculine && age > 18 && isAlisted == false) {
            return false
        }
        return true
    }
}
