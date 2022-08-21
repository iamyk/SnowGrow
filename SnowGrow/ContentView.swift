//
//  ContentView.swift
//  SnowGrow
//
//  Created by Logan Monaco on 8/20/22.
//

import SwiftUI

struct ContentView: View {
    @State var growCount = 1
    
    var body: some View {
        ZStack {
            SnowCircle()
                .frame(width: CGFloat(growCount) * 20 + 40, height: CGFloat(growCount) * 20 + 40)
                .rotationEffect(Angle(degrees: Double(360 / 8 * growCount)))
                .animation(.spring(), value: growCount)
            
            GrowButton(growCount: $growCount)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
