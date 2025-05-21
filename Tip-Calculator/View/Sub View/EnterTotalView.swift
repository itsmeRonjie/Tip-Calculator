//
//  EnterTotalView.swift
//  Tip-Calculator
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct EnterTotalView: View {
    @Binding var bill : Double
    @State private var animate = false
    
    @FocusState private var focusState: Bool
    
    @Binding var isFocused: Bool
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font: Font {
        isIPad ? .title : .body
    }
    
    var color: Color {
        animate ? .pink : .purple
    }
    
    var scale: CGFloat {
        animate ? 0.95 : 1.0
    }
    
    var offsetY: CGFloat {
        animate ? 3 : 0
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Enter Total")
                .font(font)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.leading)
            
            TextField(
                "Amount",
                value: $bill,
                format: .currency(code: Locale
                    .current
                    .currency?
                    .identifier ?? "USD")
            )
            .focused($focusState)
            .onChange(of: focusState) { _, newValue in
                isFocused = newValue
            }
            .keyboardType(.decimalPad)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .colorMultiply(color)
            .scaleEffect(y: scale)
            .offset(y: offsetY)
            .animation(
                .easeInOut(duration: 2)
                .repeatForever(),
                value: animate
            )
            .onAppear {
                animate = true
            }
        }
    }
}

#Preview {
    VStack {
        EnterTotalView(bill: .constant(100), isFocused: .constant(true))
        
        EnterTotalView(bill: .constant(100), isFocused: .constant(false))
    }
    .padding()
}
