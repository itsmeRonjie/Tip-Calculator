//
//  TestColorView.swift
//  Tip-Calculator
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct TestColorView: View {
    let colors: [Color] = [
        .myRed, .myBlack, .myGray,
        .myWhite, .myDarkGreen, .myLightGreen
    ]
    let dim = 50.0
    
    var body: some View {
        VStack {
            ForEach(colors, id: \.self) { color in
                RoundedRectangle(cornerRadius: 10)
                    .fill(color)
                    .frame(width: dim, height: dim)
            }
        }
    }
}

#Preview("Dark Mode") {
    TestColorView()
        .preferredColorScheme(.dark)
}

#Preview("Light Mode") {
    TestColorView()
        .preferredColorScheme(.light)
}
