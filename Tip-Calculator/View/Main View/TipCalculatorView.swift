//
//  TipCalculatorVie.swift
//  Tip-Calculator
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct TipCalculatorView: View {
    @State private var tipModel: TipModel = TipModel(
        tipPercentage: 20,
        split: 1,
        bill: 0.0
    )
    
    @State private var isFocused: Bool = false
    
    let maxSplit: Int = 10
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                Text("Title View")
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Enter Total View")
                    
                    Text("Choose Tip View")
                }
                
                SplitView(split: $tipModel.split, alignment: .leading)

                Spacer()
                
                if !isFocused {
                    PaymentSummaryView(tipModel: tipModel)
                    Spacer()
                }
            }
            .padding()
        }
        .onTapGesture {
            UIApplication
                .shared
                .sendAction(
                    #selector(UIResponder.resignFirstResponder),
                    to: nil,
                    from: nil,
                    for: nil
                )
        }
    }
}
#Preview {
    TipCalculatorView()
}
