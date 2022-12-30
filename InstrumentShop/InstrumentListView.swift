//
//  InstrumentListView.swift
//  InstrumentShop
//
//  Created by Chris Viarengo on 12/27/22.
//

import SwiftUI

struct InstrumentListView: View {
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                ForEach(instrumentArray) { instrument in
                    
                    
                    
                    HStack {
                        
                        /// Determines if a `systemImage` will be used or an `Assets Image` will be used.
                        (instrument.isSystemImage ? Image(systemName: instrument.image) : Image(instrument.image))
                            .resizable()
                            .scaledToFit()
                            .frame(height: 96)
                            .padding(.horizontal)
                        
                        Spacer()
                        
                        Text(instrument.name)
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                    }
                    
                    VStack {
                        
                        Text(instrument.type)
                            .font(.title3)
                        
                        Text(String(instrument.price))
                            .foregroundColor(.red)
                            .bold()
                        
                        Text(instrument.description)
                        
                        if instrument.strings != nil {
                            Text(String(instrument.strings!) + " Strings")
                        }
                        if instrument.keys != nil {
                            Text(String(instrument.keys!) + " Keys")
                        }
                        if instrument.drumPieces != nil {
                            Text(String(instrument.drumPieces!) + " Pieces")
                        }
                        
                        NavigationLink("More Info >>") { InstrumentDetailView(instrument: instrument) }
                    }
                    Divider()
                        .padding()
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InstrumentListView()
    }
}
