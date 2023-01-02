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
        
        
        NavigationView {
            
            VStack {
                
                Text("Hello, \(instrument.type.label)")
                
                
                
                Text("More information goes here")
            }
        }
        .navigationTitle("Specs")
    }
}
struct InstrumentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        InstrumentDetailView(instrument: sixStringGuitar)
    }
}
