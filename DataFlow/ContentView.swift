//
//  ContentView.swift
//  DataFlow
//
//  Created by Weerawut Chaiyasomboon on 15/2/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var color1: Color = .red
    @State private var color2: Color = .green
    @State private var color3: Color = .blue
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.3)
                .ignoresSafeArea()
            
            VStack {
                HStack{
                    RoundRectangleView(color: color1)
                    RoundRectangleView(color: color2)
                    RoundRectangleView(color: color3)
                }
                
                CustomColorPicker(text: "Left Rectangle", selectedColor: $color1)
                CustomColorPicker(text: "Middle Rectangle", selectedColor: $color2)
                CustomColorPicker(text: "Right Rectangle", selectedColor: $color3)
                
//                ColorPicker("Left Rectangle", selection: $color1)
//                ColorPicker("Middle Rectangle", selection: $color2)
//                ColorPicker("Right Rectangle", selection: $color3)
                
            }
            .padding()
        }
    }
}

struct RoundRectangleView: View {
    let dimension: CGFloat
    let color: Color
    
    init(dimension: CGFloat = 50, color: Color) {
        self.dimension = dimension
        self.color = color
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .fill(color)
            .frame(width: dimension, height: dimension)
    }
}

#Preview {
    ContentView()
}
