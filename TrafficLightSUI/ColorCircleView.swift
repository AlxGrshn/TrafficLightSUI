//
//  ColorCircleView.swift
//  TrafficLightSUI
//
//  Created by Alexander Grishin on 10.12.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 130)
            .foregroundColor(color.opacity(opacity))
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .padding(10)
    }
}
