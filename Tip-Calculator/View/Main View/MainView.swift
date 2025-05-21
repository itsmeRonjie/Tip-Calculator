//
//  ContentView.swift
//  Tip-Calculator
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var body: some View {
        VStack {
            if isIPad || isPortraitPhone {
                Text("Tip Calculator View (Portrait)")
            } else {
                Text("Tip Calculator View (Landscape)")
            }
        }
        .padding()
    }
}

#Preview {
    MainView()
}
