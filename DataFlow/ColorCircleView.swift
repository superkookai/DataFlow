//
//  ColorCircleView.swift
//  DataFlow
//
//  Created by Weerawut Chaiyasomboon on 15/2/2567 BE.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let isSelected: Bool
    
    let selectedDim = 30.0
    let notSelectedDim = 20.0
    var dim: CGFloat{
        isSelected ? selectedDim : notSelectedDim
    }
    
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: dim, height: dim)
    }
}

#Preview {
    VStack {
        ColorCircleView(color: .blue, isSelected: true)
        ColorCircleView(color: .red, isSelected: false)
    }
}
