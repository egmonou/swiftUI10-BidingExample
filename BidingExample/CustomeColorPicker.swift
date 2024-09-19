//
//  CustomeColorPicker.swift
//  BidingExample
//
//  Created by administrator on 19/09/2024.
//

import SwiftUI

struct CustomeColorPicker: View {
    
    let text: String
    @Binding var slectedColor: Color

    let colors: [Color] = [
        .red, .blue, .black, .green, .yellow, .pink,
        .purple, .gray, .indigo
    ]
    
    
    var body: some View {

        VStack(alignment: .leading, spacing: 5) {
            Text(text)
                .font(.headline)
                .fontWeight(.semibold)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(colors, id: \.self) {
                        color in
                        ColorCircle(color: color, isSelected: color == slectedColor)
                            .onTapGesture {
                                withAnimation {
                                    slectedColor = color
                                }
                            }
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 7)
                .background(
                    Color.gray.opacity(0.2)
                )
                .clipShape(.rect(cornerRadius: 10))
            }
                .padding(.horizontal)
                .padding(.vertical, 7)
                .background(
                    Color.gray.opacity(0.2)
                )
                .clipShape(.rect(cornerRadius: 10))
        }
        .padding()
    }
}

#Preview {
    CustomeColorPicker(
        text: "Color",
        slectedColor: .constant(.red)
    )
}
