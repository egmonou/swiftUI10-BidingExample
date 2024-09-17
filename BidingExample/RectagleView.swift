//
//  RectagleView.swift
//  BidingExample
//
//  Created by administrator on 17/09/2024.
//

import SwiftUI

struct RectagleView: View {
    let dim: CGFloat
    let color: Color
    
    init(dim: CGFloat = 50, color: Color) {
        self.dim = dim
        self.color = color
    }
        
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
                .frame(width: dim, height: dim)
        }
    }
}

#Preview {
    RectagleView(color: .blue)
}
