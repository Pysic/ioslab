//
//  Ages.swift
//  AgeTable
//
//  Created by iOS Lab on 25/04/24.
//

import Foundation

enum Ages: Int {
    case firstInfance
    case secondInfance
    case preTeen
    case teen
    case posTeen
    case adult
    case middleAge
    case thirdAge
    
    static func ageType(age: Int) -> Ages? {
        switch age {
        case ...4:
            .firstInfance
        case 4...10:
            .secondInfance
        case 10...15:
            .preTeen
        case 15...20:
            .teen
        case 20...26:
            .posTeen
        case 26...40:
            .adult
        case 40...65:
            .middleAge
        case 65...:
            .thirdAge
        default:
            nil
        }
    }
    
    func typeMessage() -> String {
        switch self {
        case .firstInfance:
            return "Primeira Infancia"
        case .secondInfance:
            return "Segunda Infancia"
        case .preTeen:
            return "Pré-Adolescência"
        case .teen:
            return "Adolescência"
        case .posTeen:
            return "Pós-Adolescência"
        case .adult:
            return "Adulto"
        case .middleAge:
            return "Meia Idade"
        case .thirdAge:
            return "Terceira Idade"
        }
    }
    
    func isAdult() -> Bool {
        if (self == .adult || self == .middleAge || self == .thirdAge) {
            return true
        }
        return false
    }
}
