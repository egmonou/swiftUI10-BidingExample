//
//  ContentView.swift
//  BidingExample
//
//  Created by administrator on 17/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var color1: Color = .red
    @State private var color2: Color = .blue
    @State private var color3: Color = .yellow

    var body: some View {
        ZStack {
            Color
                .blue
                .opacity(0.2)
                .ignoresSafeArea()
            VStack {
                HStack {
                    RectagleView(color: color1)
                    RectagleView(color: color2)
                    RectagleView(color: color3)
                }
                CustomeColorPicker(text: "Left", slectedColor: $color1)
                CustomeColorPicker(text: "Middele", slectedColor: $color2)
                CustomeColorPicker(text: "Right", slectedColor: $color3)


            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
