//
//  ChooseTipView.swift
//  Tip-Calculator
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct ChooseTipView: View {
    @State var selectedTip = TipPercentage.twenty.rawValue
    @Binding var tipPercentage: Int
    
    @FocusState private var focusState: Bool
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var font: Font {
        isIPad ? .title : .body
    }
    
    var buttonSpacing: CGFloat? {
        isIPad ? 25.0 : nil
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Choose tip")
                .foregroundStyle(.secondary)
                .font(font)
            
            VStack(alignment: .leading, spacing: buttonSpacing) {
                HStack {
                    SelectButtonView(
                        percentage: TipPercentage.ten.rawValue,
                        selectedTip: $selectedTip,
                        tipPercentage: $tipPercentage
                    )
                    SelectButtonView(
                        percentage: TipPercentage.fifteen.rawValue,
                        selectedTip: $selectedTip,
                        tipPercentage: $tipPercentage
                    )
                    SelectButtonView(
                        percentage: TipPercentage.twenty.rawValue,
                        selectedTip: $selectedTip,
                        tipPercentage: $tipPercentage
                    )
                    if isIPad {
                        SelectButtonView(
                            percentage: TipPercentage.twentyFive.rawValue,
                            selectedTip: $selectedTip,
                            tipPercentage: $tipPercentage
                        )
                        
                        CustomTipView(
                            selectedTip: $selectedTip,
                            tipPercentage: $tipPercentage
                        )
                    }
                }
                if !isIPad {
                    HStack {
                        SelectButtonView(
                            percentage: TipPercentage.twentyFive.rawValue,
                            selectedTip: $selectedTip,
                            tipPercentage: $tipPercentage
                        )
                        
                        CustomTipView(
                            selectedTip: $selectedTip,
                            tipPercentage: $tipPercentage
                        )
                    }
                }
            }
        }
    }
}

#Preview {
    ChooseTipView(tipPercentage: .constant(TipPercentage.twenty.rawValue))
}
