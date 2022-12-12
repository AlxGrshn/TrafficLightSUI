//
//  StartButtonView.swift
//  TrafficLightSUI
//
//  Created by Alexander Grishin on 12.12.2022.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button (action: action) {
            Text (title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor (.white)
        }
        .frame(width: 130, height: 50)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke (.white, lineWidth: 4)
        )
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(title: "START", action: {})
    }
}
