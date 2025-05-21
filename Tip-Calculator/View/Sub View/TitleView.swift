//
//  TitleView.swift
//  Tip-Calculator
//
//  Created by Ronjie Diafante Man-on on 5/21/25.
//

import SwiftUI

struct TitleView: View {
    let alignment: TextAlignment
    
    init(alignment: TextAlignment = .center) {
        self.alignment = alignment
    }
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var fontWeight: Font.Weight {
        isIPad ? .bold : .semibold
    }
    
    var body: some View {
        Text("Tip Calculator")
            .font(.largeTitle)
            .fontWeight(fontWeight)
            .multilineTextAlignment(alignment)
    }
}

#Preview {
    TitleView()
}
