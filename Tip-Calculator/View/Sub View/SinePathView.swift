//
//  SinePathView.swift
//  Tip-Calculator
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct SinePathView: View {
    var body: some View {
        ZStack {
            SineWaveView(
                fillColor: .green.opacity(0.7),
                height: 200
            )
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .top
            )
            
            SineWaveView(
                fillColor: .green.opacity(0.7),
                height: 200
            )
            .rotationEffect(Angle(degrees: 180))
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .bottom
            )
            
        }
        .ignoresSafeArea()
    }
}


#Preview {
    SinePathView()
}
