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
                ColorPicker("Left", selection: $color1)
                ColorPicker("Middele", selection: $color2)
                ColorPicker("Right", selection: $color3)

            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
