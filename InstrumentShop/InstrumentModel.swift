//
//  InstrumentModel.swift
//  InstrumentShop
//
//  Created by Chris Viarengo on 12/27/22.
//

import Foundation

struct InstrumentModel: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var color: String
    var type: String
    var price: Double
    var description: String
    var strings: Int?
    var keys: Int?
    var drumPieces: Int?
    
    /// Some instruments are not found in `SF Symbols` and require external Assets
    var isSystemImage = true
}

let sixStringGuitar = InstrumentModel(
    name: "Schecter Guitar",
    image: "guitars",
    color: "Maroon",
    type: "Electric Guitar",
    price: 1_000,
    description: "Schecter Artist Series Guitar",
    strings: 6)

let eightStringGuitar = InstrumentModel(
    name: "Schecter Guitar",
    image: "guitars",
    color: "Navy Blue",
    type: "Electric Guitar",
    price: 1_500,
    description: "Schecter Omen Series Guitar",
    strings: 8)

let casioKeyboard = InstrumentModel(
    name: "Casio Keyboard",
    image: "pianokeys",
    color: "Black",
    type: "Keyboard",
    price: 3_000.99,
    description: "Big Ass Casio Keyboard",
    keys: 128)

let pearlDrumkit = InstrumentModel(
    name: "Pearl Drum Set",
    image: "PearlDrumKit",
    color: "Silver",
    type: "Acoustic Drum Set",
    price: 389.00,
    description: "Pearl Roadshow Jr. 5-piece Complete Drum Set with Cymbals",
    drumPieces: 5,
    isSystemImage: false)


let instrumentArray = [sixStringGuitar, eightStringGuitar, casioKeyboard, pearlDrumkit]
