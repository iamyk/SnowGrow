//
//  GrowButton.swift
//  SnowGrow
//
//  Created by Logan Monaco on 8/20/22.
//

import SwiftUI

struct GrowButton: View {
    @Binding var growCount: Int
    
    var body: some View {
        Button {
            growCount += 1
            if (growCount > 35) {
                growCount = 1
            }
        } label: {
            Text("Grow!")
        }
    }
}

struct GrowButton_Previews: PreviewProvider {
    static var previews: some View {
        GrowButton(growCount: .constant(1))
    }
}
