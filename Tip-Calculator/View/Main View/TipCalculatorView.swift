//
//  TipCalculatorVie.swift
//  Tip-Calculator
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct TipCalculatorView: View {
    @State private var tipPercentage = 20
    @State private var split = 1
    @State private var bill = 0.0
    @State private var isFocused = false
    
    let maxSplit: Int = 10

    var body: some View {
        ZStack {
            Color
                .blue
                .opacity(0.3)
                .ignoresSafeArea()
            
            VStack {
                Text("Title View")
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Enter Total View")
                    Text("Choose Tip View")

                }
                Text("Split View")
                
                Spacer()
                
                if !isFocused {
                    Text("Payment Summary View")
                    Spacer()
                }
            }
            .padding()
        }
        .onTapGesture {
            print("Implements tap outside textfield")
        }
    }
}

#Preview {
    TipCalculatorView()
}
