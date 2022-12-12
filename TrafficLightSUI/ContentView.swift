//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Alexander Grishin on 10.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonName = "START"
    
    @State private var redLightOpacity: CGFloat = 0.3
    @State private var yellowLightOpacity: CGFloat = 0.3
    @State private var greenLightOpacity: CGFloat = 0.3
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                ColorCircleView(color: .red, opacity: redLightOpacity)
                ColorCircleView(color: .yellow, opacity: yellowLightOpacity)
                ColorCircleView(color: .green, opacity: greenLightOpacity)
                Spacer()
                
                StartButtonView(title: buttonName) {
                    if buttonName == "START" {
                        buttonName = "NEXT"
                    }
                    trafficLightSwitchColor()
                }
            }
            .padding()
        }
    }
    
    private func trafficLightSwitchColor() {
        if redLightOpacity == 1 {
            redLightOpacity = 0.3
            yellowLightOpacity = 1
        } else if yellowLightOpacity == 1 {
            yellowLightOpacity = 0.3
            greenLightOpacity = 1
        } else {
            redLightOpacity = 1
            yellowLightOpacity = 0.3
            greenLightOpacity = 0.3
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
