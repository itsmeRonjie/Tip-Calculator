//
//  CustomTipView.swift
//  Tip-Calculator
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct CustomTipView: View {
    @Binding var selectedTip: Int
    @Binding var tipPercentage: Int
    
    @FocusState private var focusState: Bool
    
    var isSelected: Bool {
        selectedTip == tipPercentage
    }
    
    var fgColor: Color {
        isSelected ? .myDarkGreen : .white
    }
    var bgColor: Color {
        isSelected ? .white : .myDarkGreen
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TextField(
                "Custom",
                value: $tipPercentage,
                format: .percent
            )
            .focused($focusState)
            .onChange(of: focusState) { oldValue, newValue in
                selectedTip = TipPercentage.custom.rawValue
            }
            .fixedSize()
            .keyboardType(.numberPad)
            .font(.headline.weight(.semibold))
            .foregroundStyle(fgColor)
            .padding()
            .background(bgColor.opacity(0.7))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: fgColor.opacity(0.3), radius: 3, x: 2, y: 2)
            
            Text("Custom")
                .font(.caption)
                .foregroundStyle(isSelected ? Color.secondary : Color.white)
        }
    }
}

#Preview {
    CustomTipView(
        selectedTip: .constant(5),
        tipPercentage: .constant(TipPercentage.twenty.rawValue)
    )
}
