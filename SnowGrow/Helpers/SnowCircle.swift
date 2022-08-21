//
//  SnowCircle.swift
//  SnowGrow
//
//  Created by Logan Monaco on 8/20/22.
//

import SwiftUI

struct SnowCircle: View {
    var body: some View {
        Circle()
            .fill(.linearGradient(
                Gradient(colors: [.blue.opacity(0.6), .blue.opacity(0.1)]),
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 0.6)))
            .aspectRatio(1, contentMode: .fit)
    }
}

struct SnowCircle_Previews: PreviewProvider {
    static var previews: some View {
        SnowCircle()
            .frame(width: 1024, height: 1024)
    }
}
