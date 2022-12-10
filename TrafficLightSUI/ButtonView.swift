//
//  ButtonView.swift
//  TrafficLightSUI
//
//  Created by Alexander Grishin on 10.12.2022.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button {
            print("")
        } label: {
            "Start"
        }

    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
