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
            
            VStack {
                ColorCircleView(color: .red, opacity: redLightOpacity)
                    .padding(10)
                ColorCircleView(color: .yellow, opacity: yellowLightOpacity)
                    .padding(10)
                ColorCircleView(color: .green, opacity: greenLightOpacity)
                    .padding(10)
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
        if buttonName == "START" {
            buttonName = "NEXT"
        }
        trafficLightSwitchColor()
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
