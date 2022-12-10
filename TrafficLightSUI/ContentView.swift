//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Alexander Grishin on 10.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonName = "START"
    @State private var defaultOpacity: CGFloat = 0.3
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                ColorCircleView(color: .red, opacity: defaultOpacity)
                ColorCircleView(color: .yellow, opacity: defaultOpacity)
                ColorCircleView(color: .green, opacity: defaultOpacity)
                Spacer()
                
                Button(action: turnTrafficLight) {
                    Text(buttonName)
                        .font(.largeTitle)
                        .tint(.white)
                }
                .frame(width: 130, height: 50)
                .background(Color.blue)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.white, lineWidth: 5))
            }.padding()
        }
    }
    private func turnTrafficLight() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
