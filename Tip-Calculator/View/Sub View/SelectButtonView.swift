//
//  SelectButtonView.swift
//  Tip-Calculator
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct SelectButtonView: View {
    let percentage: Int
    let color1: Color = .myDarkGreen
    let color2: Color = .white
    let shadowOpacity = 0.3

    @Binding var selectedTip: Int
    @Binding var tipPercentage: Int    
    
    var isPressed: Bool {
        selectedTip == percentage
    }
    
    var body: some View {
        Text("\(percentage)")
            .padding()
            .foregroundStyle(isPressed ? color2 : color1)
            .background(isPressed ? color1.opacity(0.7) : color2.opacity(0.7))
            .clipShape(Capsule())
            .shadow(
                color: isPressed ? color2.opacity(shadowOpacity) : color1.opacity(shadowOpacity),
                radius: 3,
                x: 2,
                y: 2
            )
            .onTapGesture {
                withAnimation {
                    selectedTip = percentage
                    tipPercentage = percentage
                }
            }
    }
}

#Preview {
    ZStack {
        Color.myLightGreen.ignoresSafeArea()
        SelectButtonView(
            percentage: 10,
            selectedTip: .constant(5),
            tipPercentage: .constant(TipPercentage.ten.rawValue)
        )
    }
}
