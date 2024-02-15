//
//  CustomColorPicker.swift
//  DataFlow
//
//  Created by Weerawut Chaiyasomboon on 15/2/2567 BE.
//

import SwiftUI

struct CustomColorPicker: View {
    let colors: [Color] = [
        .red,
        .green,
        .blue,
        .orange,
        .yellow, .pink, .purple, .gray, .black, .white,
        .indigo, .teal, .brown, .cyan
    ]
    
    let text: String
    @Binding var selectedColor: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(text)
                .font(.headline)
                .fontWeight(.semibold)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(colors, id: \.self){ color in
                        ColorCircleView(color: color, isSelected: color == selectedColor)
                            .onTapGesture {
                                withAnimation{
                                    selectedColor = color
                                }
                            }
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .clipShape(.rect(cornerRadius: 10))
            }
        }
    }
}


#Preview {
    CustomColorPicker(text: "Color:", selectedColor: .constant(Color.red))
}
