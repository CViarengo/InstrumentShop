//
//  InstrumentDetailView.swift
//  InstrumentShop
//
//  Created by Chris Viarengo on 12/27/22.
//

import SwiftUI

struct InstrumentDetailView: View {
    
    var instrument: InstrumentModel
    
    var body: some View {
        
        Text("Hello, \(instrument.type)")
    }
}

struct InstrumentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        InstrumentDetailView(instrument: sixStringGuitar)
    }
}
