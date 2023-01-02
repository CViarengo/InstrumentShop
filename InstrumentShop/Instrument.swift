//
//  Instrument.swift
//  InstrumentShop
//
//  Created by Kyle Lovely on 12/30/22.
//

import Foundation

enum Instrument {
    
    case guitar
    case drums
    case keyboard
    
    var label: String {
        switch self {
        case .guitar: return "Electric Guitar"
        case .drums: return "Acoustic Drum Set"
        case .keyboard: return "Keyboard"
        }
    }
}
