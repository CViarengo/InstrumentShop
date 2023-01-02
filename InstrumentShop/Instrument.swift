//
//  Instrument.swift
//  InstrumentShop
//
//  Created by Kyle Lovely on 12/30/22.
//

import Foundation

enum Instrument: String, CaseIterable {
    
    case guitar
    case drums
    case keyboard
    case microphone
    
    var label: String {
        switch self {
        case .guitar: return "Electric Guitar"
        case .drums: return "Acoustic Drum Set"
        case .keyboard: return "Keyboard"
        case .microphone: return "Microphone"
        }
    }
}
